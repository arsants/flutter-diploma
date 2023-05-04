import 'dart:io';

import 'package:katai/core/router/router.gr.dart';
import 'package:katai/features/leaderboard/presentation/bloc/leaderboard_cubit.dart';
import 'package:katai/features/leaderboard/presentation/bloc/leaderboard_state.dart';
import 'package:katai/features/ride/domain/entities/ride.dart';
import 'package:katai/features/ride/presentation/widgets/confirmation_dialog.dart';
import 'package:katai/features/ride/presentation/widgets/timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:location/location.dart';

class RidePreStartPage extends StatefulWidget {
  final Ride ride;

  const RidePreStartPage({Key? key, required this.ride}) : super(key: key);

  @override
  _RidePreStartPageState createState() => _RidePreStartPageState();
}

class _RidePreStartPageState extends State<RidePreStartPage> {
  @override
  void initState() {
    super.initState();
    startLocation();
  }

  Future<void> startLocation() async {
    final Location location = Location();
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Get ready to race!',
                style: TextStyle(fontSize: 20),
              ).tr(),
              SizedBox(
                child: OtpTimer(
                  route: RidePageRoute(ride: widget.ride),
                  duration: Duration(seconds: 10),
                ),
                height: 200,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 50),
                child: Container(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () async {
                      await showDialog(
                          context: context,
                          builder: (context) => ConfirmationDialog(
                                ride: widget.ride,
                              ));
                    },
                    child: Text('Exit').tr(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
