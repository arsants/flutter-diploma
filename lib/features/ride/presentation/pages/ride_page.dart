import 'dart:async';

import 'package:katai/core/router/router.gr.dart';
import 'package:katai/core/util/meters_display.dart';
import 'package:katai/features/map/presentation/bloc/map_cubit.dart';
import 'package:katai/features/profile/domain/entities/user.dart';
import 'package:katai/features/profile/presentation/bloc/user_cubit.dart';
import 'package:katai/features/ride/domain/entities/ride.dart';
import 'package:katai/features/ride/presentation/bloc/ride_cubit.dart';
import 'package:katai/features/ride/presentation/bloc/ride_state.dart';
import 'package:katai/features/ride/presentation/widgets/confirmation_dialog.dart';
import 'package:katai/features/ride/presentation/widgets/timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:easy_localization/easy_localization.dart';

class RidePage extends StatefulWidget {
  final Ride ride;

  const RidePage({Key? key, required this.ride}) : super(key: key);

  @override
  _RidePageState createState() => _RidePageState();
}

class _RidePageState extends State<RidePage> {
  late Ride ride;
  late StreamSubscription<LocationData> _sub;
  late User? user;

  Map<int, dynamic> modes = {
    3: 'Sprint',
    15: 'Midrange distance',
    30: 'Long distance'
  };

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    ride = widget.ride;
    user = context.read<UserCubit>().user;
    context.read<RideCubit>().get(ride);
    startLocation();
  }

  Future<void> startLocation() async {
    final Location location = Location();
    _sub = location.onLocationChanged.listen((data) async {
      context
          .read<MapCubit>()
          .updateCurrentLocation(LatLng(data.latitude!, data.longitude!));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: BlocConsumer<RideCubit, RideState>(
        listener: (context, state) {
          if (state is RideGot) {
            ride = state.ride;
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

          return Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(modes[ride.timeLimit.inMinutes], style: TextStyle(fontSize: 28),).tr(),
                      ),
                      OtpTimer(
                        route: RideResultPageRoute(ride: ride),
                        duration: ride.timeLimit,
                        function: () {
                          context.read<RideCubit>().get(ride);
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "${ride.results.indexWhere((element) => element.isMe == true) + 1}/${ride.results.length}",
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final u = ride.results[index];
                      final double boxHeight =
                          ride.results.first.currentRideMeters > 0
                              ? 300 *
                                  (u.currentRideMeters /
                                      ride.results.first.currentRideMeters)
                              : 0;
                      return SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  metersFormat(u.currentRideMeters.toInt()),
                                  style: const TextStyle(fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  color: u.isMe
                                      ? Colors.lightBlueAccent
                                      : Colors.blue,
                                  height: boxHeight,
                                  width: 80,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  u.isMe
                                      ? 'Me'.tr()
                                      : u.isHistoric
                                          ? 'Ghost'.tr()
                                          : u.username,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: ride.results.length,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 40),
                  child: Container(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () async {
                        await showDialog(
                            context: context,
                            builder: (context) => ConfirmationDialog(
                                  ride: ride,
                                ));
                      },
                      child: Text('Exit'.tr()),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    ));
  }
}
