import 'package:auto_route/auto_route.dart';
import 'package:katai/core/router/router.gr.dart';
import 'package:katai/features/login/presentation/bloc/auth_bloc.dart';
import 'package:katai/features/login/presentation/bloc/auth_state.dart';
import 'package:katai/features/login/presentation/bloc/bloc.dart';
import 'package:katai/features/login/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:easy_localization/easy_localization.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  void initState() {
    BlocProvider.of<AuthBloc>(context).add(GetAuthEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: buildBody(context)),
    );
  }
}

Widget buildBody(BuildContext context) {
  return SafeArea(
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            BlocConsumer<AuthBloc, AuthState>(builder: (context, state) {
              return SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: Center(
                  child: Image.asset(
                    'assets/logo.png',
                    width: 150,
                    height: 150,
                    fit: BoxFit.fill,
                  ),
                ),
              );
            }, listener: (context, state) {
              if (state is Error) {
                if (state.message != 'Welcome to Katai') {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(state.message),
                    backgroundColor: Colors.redAccent,
                  ));
                }
              } else if (state is Loaded) {
                if (state.auth.accessToken != '') {
                  AutoRouter.of(context).replace(const IndexPageRoute());
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: const Duration(seconds: 1),
                    content: Text("You have successfully logged in".tr()),
                    backgroundColor: Colors.green,
                  ));
                }
              }
            }),
            const AuthControls()
          ],
        ),
      ),
    ),
  );
}
