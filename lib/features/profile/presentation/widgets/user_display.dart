import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:katai/features/profile/domain/entities/user.dart';
import 'package:katai/features/profile/presentation/widgets/user_controls.dart';
import 'package:url_launcher/url_launcher.dart';

class UserDisplay extends StatelessWidget {
  final User user;
  final bool isMy;

  const UserDisplay({
    Key? key,
    required this.user,
    required this.isMy,
  }) : super(key: key);

  Future<void> _launchTG(String username) async {
    final String url = "https://t.me/$username";
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
  Widget build(BuildContext context) {
    final double containerWidth = MediaQuery.of(context).size.width / 3;

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 4,
              ),
            ],
          ),
          child: Stack(
            children: [
              if (isMy)
                Align(
                  alignment: Alignment.topRight,
                  child: Transform.scale(
                    scale: 0.7,
                    child: FloatingActionButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(child: UserControls(user: user));
                            });
                      },
                      child: Icon(Icons.edit),
                    ),
                  ),
                ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    child: Center(
                                      child: Text(
                                        '${user.firstName == "" ? "Anonymous".tr() : user.firstName} ${user.lastName == "" ? "User".tr() : user.lastName}',
                                        style: const TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "@${user.username}",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: ElevatedButton(
                          onPressed: () {
                            _launchTG(user.telegram.toString());
                          },
                          child: Row(
                            children: [
                              Text('Telegram'.tr()),
                              const Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: FaIcon(
                                  FontAwesomeIcons.telegramPlane,
                                  size: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            Container(
                              width: containerWidth,
                              child: Center(
                                child: Column(
                                  children: [
                                    Text(
                                      '${'Total'.tr()}'
                                          .toUpperCase(),
                                      style: TextStyle(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        '${user.totalMeters.toInt() ~/ 1000}',
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: containerWidth,
                              child: Center(
                                child: Column(
                                  children: [
                                    Text(
                                      '${'Finished Rides'.tr()}'.toUpperCase(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        '${user.finishedRides}',
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
