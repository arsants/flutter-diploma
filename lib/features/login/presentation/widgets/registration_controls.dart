import 'package:auto_route/auto_route.dart';
import 'package:katai/features/login/data/models/auth_model.dart';
import 'package:katai/features/login/presentation/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class RegisterControls extends StatefulWidget {
  const RegisterControls({
    Key? key,
  }) : super(key: key);

  @override
  _RegisterControlsState createState() => _RegisterControlsState();
}

class _RegisterControlsState extends State<RegisterControls> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  late String username;
  late String password1;
  late String password2;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Sign Up form".tr(), textScaleFactor: 2),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(), hintText: 'Enter username'.tr()),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please enter username';
                    }
                    return null;
                  },
                  onSaved: (value) => username = value!,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  controller: _pass,
                  validator: (value) {
                    if (value!.length < 8) {
                      return 'Your password must be between 8 and 24 characters'.tr();
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Enter password'.tr(),
                  ),
                  onSaved: (value) => password1 = value!,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: "Confirm password".tr(),
                  ),
                  validator: (value) {
                    if (value != _pass.text) {
                      return 'Passwords must match'.tr();
                    }
                    return null;
                  },
                  onSaved: (value) => password2 = value!,
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState == null) {
                    return;
                  }
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    dispatchRegistration();
                  }
                },
                child: Text('Register'.tr()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void dispatchRegistration() {
    BlocProvider.of<AuthBloc>(context).add(UserRegistration(
        registrationStruct: RegistrationStruct(
            username: username, password1: password1, password2: password2)));
    AutoRouter.of(context).pop();
  }
}
