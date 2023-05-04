import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:katai/core/router/router.gr.dart';
import 'package:katai/features/ride/domain/entities/ride.dart';
import 'package:katai/features/ride/presentation/bloc/ride_cubit.dart';
import 'package:katai/features/ride/presentation/bloc/ride_state.dart';
import 'package:katai/features/ride/presentation/widgets/confirmation_dialog.dart';
import 'package:katai/graphql/schema.schema.gql.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class RidePendingPage extends StatefulWidget {
  final Ride ride;

  const RidePendingPage({Key? key, required this.ride}) : super(key: key);

  @override
  _RidePendingPageState createState() => _RidePendingPageState();
}

class _RidePendingPageState extends State<RidePendingPage> {
  late Ride ride;
  late Timer timer;

  Map<int, dynamic> type = {
    3: "Sprint",
    15: "Midrange",
    30: "Long",
  };

  @override
  void initState() {
    super.initState();
    ride = widget.ride;
    context.read<RideCubit>().get(ride);
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      context.read<RideCubit>().get(ride);
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Platform.isIOS
                ? Icon(Icons.arrow_back_ios)
                : Icon(Icons.arrow_back),
            onPressed: () async {
              await showDialog(
                  context: context,
                  builder: (context) => ConfirmationDialog(
                        ride: ride,
                      ));
            },
          ),
          centerTitle: true,
          title: const Text("Waiting for the start").tr(),
          automaticallyImplyLeading: false,
        ),
        body: BlocConsumer<RideCubit, RideState>(
          listener: (context, state) {
            if (state is RideGot) {
              ride = state.ride;
              if (ride.status == GRideStatusEnum.ONGOING) {
                timer.cancel();
                AutoRouter.of(context)
                    .replaceAll([RidePreStartPageRoute(ride: ride)]);
              }
            }

            if (state is RideError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.redAccent,
              ));
            }
          },
          builder: (context, state) {
            if (state is RideInitial) {
              return const Center(child: CircularProgressIndicator.adaptive());
            }
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${"${type[ride.timeLimit.inMinutes]}".tr()} - ${"minute".plural(ride.timeLimit.inMinutes)}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("ride_goal".plural(ride.timeLimit.inMinutes)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${"participants".plural(ride.users.length)}:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final user = ride.users[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(user.username),
                        );
                      },
                      itemCount: ride.users.length,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150,
                        child: Row(
                          children: [
                            Text(
                              '${"Code".tr()}: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              ride.inviteCode,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            Clipboard.setData(
                              ClipboardData(text: ride.inviteCode),
                            );
                          },
                          child: Text('Copy'.tr()),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        if (ride.isCreator)
                          Container(
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {
                                context
                                    .read<RideCubit>()
                                    .start(ride, Duration(seconds: 10));
                              },
                              child: Text('Start'.tr()),
                            ),
                          ),
                        Container(
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () async {
                              await showDialog(
                                  context: context,
                                  builder: (context) => ConfirmationDialog(
                                        ride: ride,
                                      ));
                            },
                            child: Text(ride.isCreator
                                ? "Delete race".tr()
                                : "Exit".tr()),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
