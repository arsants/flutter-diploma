import 'package:auto_route/auto_route.dart';
import 'package:katai/core/router/router.gr.dart';
import 'package:katai/features/ride/presentation/bloc/ride_cubit.dart';
import 'package:katai/features/ride/presentation/bloc/ride_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';

class RideJoinPage extends StatefulWidget {
  @override
  _RideJoinPageState createState() => _RideJoinPageState();
}

class _RideJoinPageState extends State<RideJoinPage> {
  TextEditingController controller = TextEditingController();

  Future<void> joinRide() async {
    await context.read<RideCubit>().join(controller.text);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Join the game".tr()),
      ),
      body: BlocConsumer<RideCubit, RideState>(
        listener: (context, state) {
          if (state is RideJoined) {
            AutoRouter.of(context).replace(RidePendingPageRoute(ride: state.ride));
          }

          if (state is RideError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.redAccent,
            ));
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 200),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 250,
                        child: TextField(
                          textCapitalization: TextCapitalization.characters,
                          controller: controller,
                          decoration: InputDecoration(labelText: "Code".tr()),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        joinRide();
                      },
                      child: Text('Join'.tr()),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
