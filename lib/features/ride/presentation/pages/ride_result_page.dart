import 'package:auto_route/auto_route.dart';
import 'package:katai/core/router/router.gr.dart';
import 'package:katai/core/util/meters_display.dart';
import 'package:katai/features/ride/domain/entities/ride.dart';
import 'package:katai/features/ride/presentation/bloc/ride_cubit.dart';
import 'package:katai/features/ride/presentation/bloc/ride_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class RideResultPage extends StatefulWidget {
  final Ride ride;

  const RideResultPage({Key? key, required this.ride}) : super(key: key);

  @override
  _RideResultPageState createState() => _RideResultPageState();
}

class _RideResultPageState extends State<RideResultPage> {
  late Ride ride;

  @override
  void initState() {
    super.initState();
    ride = widget.ride;
    context.read<RideCubit>().cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Race result").tr(),
        automaticallyImplyLeading: false,
      ),
      body: BlocConsumer<RideCubit, RideState>(
        listener: (context, state) {
          if (state is RideGot) {}

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

          return Column(
            children: [
              SizedBox(
                height: 550,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final user = ride.results[index];
                    return ListTile(
                      title: Row(
                        children: [
                          SizedBox(
                              width: 260,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: SizedBox(
                                        width: 30, child: Text("${index + 1}")),
                                  ),
                                  Text(user.username),
                                ],
                              )),
                          Text(metersFormat(user.currentRideMeters.toInt())),
                        ],
                      ),
                    );
                  },
                  itemCount: ride.results.length,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
                child: ElevatedButton(
                  onPressed: () async {
                    AutoRouter.of(context).replaceAll([IndexPageRoute()]);
                  },
                  child: Text('Continue').tr(),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
