import 'package:auto_route/auto_route.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:katai/core/router/router.gr.dart';
import 'package:katai/features/login/presentation/bloc/auth_bloc.dart';
import 'package:katai/features/login/presentation/bloc/auth_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:katai/features/profile/presentation/bloc/cubit.dart';
import 'package:lumberdash/lumberdash.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late bool isPublic;
  late bool isSuperuser;
  String suggestions = "app.katai@gmail.com";
  String vk = 'https://vk.com/appkatai';
  String instagram = 'https://www.instagram.com/katai.app/';
  String discord = 'https://discord.gg/CVbt3mHYGM';

  Future<void> _launchMailTo(String email) async {
    final String url = "mailto:$email";
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWeb(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {
    super.initState();
    isPublic = context.read<UserCubit>().user!.isPublic;
    isSuperuser = context.read<UserCubit>().user!.isSuperuser;
  }

  void dispatchLogOut() {
    BlocProvider.of<AuthBloc>(context).add(UserLogOut());
    AutoRouter.of(context).replaceAll([const AuthPageRoute()]);
  }

  void updatePublic() {
    context.read<UserCubit>().updatePrivacy(isPublic);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Settings').tr(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      'Public account',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ).tr(),
                    SizedBox(
                      width: 10,
                    ),
                    Switch.adaptive(
                      value: isPublic,
                      onChanged: (value) {
                        setState(() {
                          isPublic = value;
                        });
                        updatePublic();
                      },
                    ),
                  ],
                ),
                const Text(
                  'Attention! By making your profile public, you allow other users to see your rides and compete with them.',
                  style: TextStyle(fontSize: 16),
                ).tr(),
                SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Encountered a problem or got any suggestions?',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ).tr(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "${'E-mail us here'.tr()}: ",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          InkWell(
                            child: Text(
                              suggestions,
                              style: TextStyle(
                                fontSize: 16,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onTap: () {
                              _launchMailTo(suggestions);
                              logMessage("mailto:$suggestions");
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Social media',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ).tr(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          //TODO сделать open page
                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.instagram,
                              ),
                              iconSize: 50,
                              onPressed: () {
                                _launchInWeb(instagram);
                                logMessage('insta');
                              }),

                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.discord,
                              ),
                              iconSize: 50,
                              onPressed: () {
                                _launchInWeb(discord);
                                logMessage('discord');
                              }),
                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.vk,
                              ),
                              iconSize: 50,
                              onPressed: () {
                                _launchInWeb(vk);
                                logMessage('vk');
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 200,
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: TextButton(
                    onPressed: dispatchLogOut,
                    child: Text(
                      'Log Out',
                      style: TextStyle(fontSize: 20),
                    ).tr(),
                  ),
                ),
                isSuperuser
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: ElevatedButton(
                              onPressed: () {
                                context.setLocale(Locale('en'));
                              },
                              child: const Text('en'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: ElevatedButton(
                              onPressed: () {
                                context.setLocale(Locale('ru'));
                              },
                              child: const Text('ru'),
                            ),
                          )
                        ],
                      )
                    : Container(),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
