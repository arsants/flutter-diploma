import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class OtpTimer extends StatefulWidget {
  final Duration duration;
  final PageRouteInfo route;
  final Function? function;

  const OtpTimer(
      {Key? key, required this.duration, required this.route, this.function})
      : super(key: key);

  @override
  _OtpTimerState createState() => _OtpTimerState();
}

class _OtpTimerState extends State<OtpTimer> {
  final interval = const Duration(seconds: 1);

  int currentSeconds = 0;

  String get timerText =>
      '${((widget.duration.inSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}:${((widget.duration.inSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  startTimeout([int? milliseconds, double? sad]) {
    var duration = interval;
    Timer.periodic(duration, (timer) {
      if (mounted) {
        setState(() {
          currentSeconds = timer.tick;
          if (widget.function != null) {
            widget.function!();
          }
          if (timer.tick >= widget.duration.inSeconds) {
            timer.cancel();
            AutoRouter.of(context).replaceAll([widget.route]);
          }
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        timerText,
        style: const TextStyle(fontSize: 50),
      ),
    );
  }
}
