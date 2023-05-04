import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:katai/features/profile/domain/entities/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katai/features/profile/presentation/bloc/user_cubit.dart';
import 'package:easy_localization/easy_localization.dart';

class UserControls extends StatefulWidget {
  final User user;

  const UserControls({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  _UserControlsState createState() => _UserControlsState();
}

class _UserControlsState extends State<UserControls> {
  late String username = widget.user.username;
  late String firstName = widget.user.firstName;
  late String lastName = widget.user.lastName;
  late String telegram = widget.user.telegram ?? "";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              initialValue: firstName,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter fistName'),
              onChanged: (value) {
                firstName = value;
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              initialValue: lastName,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter lastName'),
              onChanged: (value) {
                lastName = value;
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              initialValue: username,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter username'),
              onChanged: (value) {
                username = value;
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              initialValue: telegram,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter telegram'),
              onChanged: (value) {
                telegram = value;
              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: dispatchUpdateMe,
              child: Text('Save').tr(),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> dispatchUpdateMe() async {
    await context
        .read<UserCubit>()
        .update(firstName, lastName, username, telegram);
    AutoRouter.of(context).pop();
  }
}
