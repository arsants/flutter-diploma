import 'dart:io';

import 'package:katai/features/login/data/models/auth_model.dart';
import 'package:katai/features/login/presentation/bloc/bloc.dart';
import 'package:katai/features/login/presentation/widgets/registration_controls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:easy_localization/easy_localization.dart';

class AuthControls extends StatefulWidget {
  const AuthControls({
    Key? key,
  }) : super(key: key);

  @override
  _AuthControlsState createState() => _AuthControlsState();
}

class _AuthControlsState extends State<AuthControls> {
  late String username;
  late String password;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: size.width * 0.6,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              contentPadding: EdgeInsets.all(10),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              hintText: 'Username'.tr(),
            ),
            onChanged: (value) {
              username = value;
            },
          ),
        ),
        Container(
          width: size.width * 0.6,
          child: TextField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
                size: 20,
              ),
              contentPadding: EdgeInsets.all(10),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              hintText: 'Password'.tr(),
            ),
            onChanged: (value) {
              password = value;
            },
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20, bottom: 100),
          child: Column(
            children: [
              SizedBox(
                width: 220,
                height: 36,
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    onPressed: dispatchCred,
                    child: Text(
                      'LOGIN'.tr(),
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Or'.tr(),
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              SignInButton(
                Buttons.Google,
                onPressed: dispatchGoogle,
                text: "Sign in with Google".tr(),
              ),
              if (Platform.isIOS)
                SignInButton(
                  Buttons.Apple,
                  onPressed: dispatchApple,
                  text: "Sign in with Apple".tr(),
                )
              else
                Container(
                  height: 50,
                )
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an Account?".tr()),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const Dialog(child: RegisterControls());
                      });
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Sign Up".tr(),
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  void dispatchCred() {
    BlocProvider.of<AuthBloc>(context).add(AuthWithUsername(
        usernameStruct:
            UsernameStruct(username: username, password: password)));
  }

  void dispatchApple() {
    BlocProvider.of<AuthBloc>(context).add(AuthWithApple());
  }

  void dispatchGoogle() {
    BlocProvider.of<AuthBloc>(context).add(AuthWithGoogle());
  }
}
