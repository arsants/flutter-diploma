import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:katai/core/router/router.gr.dart';
import 'package:katai/features/ride/domain/entities/ride.dart';
import 'package:katai/features/ride/presentation/bloc/ride_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class ConfirmationDialog extends StatefulWidget {
  final Ride ride;

  const ConfirmationDialog({Key? key, required this.ride}) : super(key: key);

  @override
  _ConfirmationDialogState createState() => _ConfirmationDialogState();
}

class _ConfirmationDialogState extends State<ConfirmationDialog> {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoAlertDialog(
            title: Text('Are you sure?').tr(),
            actions: [
              CupertinoDialogAction(
                isDestructiveAction: true,
                onPressed: () async {
                  context.read<RideCubit>().leave(widget.ride);
                  context.read<RideCubit>().cancel();
                  AutoRouter.of(context).replaceAll([IndexPageRoute()]);
                },
                child: Text("Exit".tr()),
              ),
              CupertinoDialogAction(
                isDefaultAction: true,
                onPressed: () {
                  AutoRouter.of(context).pop();
                },
                child: Text("Cancel".tr()),
              ),
            ],
          )
        : AlertDialog(
            title: Text("Are you sure?".tr()),
            actions: [
              TextButton(
                onPressed: () async {
                  context.read<RideCubit>().leave(widget.ride);
                  AutoRouter.of(context).replaceAll([IndexPageRoute()]);
                },
                child: Text("Exit".tr(), style: TextStyle(color: Colors.red),),
              ),
              TextButton(
                onPressed: () {
                  AutoRouter.of(context).pop();
                },
                child: Text("Cancel".tr()),
              ),
            ],
          );
  }
}
