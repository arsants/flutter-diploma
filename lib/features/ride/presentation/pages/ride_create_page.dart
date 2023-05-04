import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:katai/core/router/router.gr.dart';
import 'package:katai/features/ride/presentation/bloc/ride_cubit.dart';
import 'package:katai/features/ride/presentation/bloc/ride_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:lumberdash/lumberdash.dart';

class RideCreatePage extends StatefulWidget {
  @override
  _RideCreatePageState createState() => _RideCreatePageState();
}

class _RideCreatePageState extends State<RideCreatePage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  List<Duration> times = [
    Duration(minutes: 3),
    Duration(minutes: 15),
    Duration(minutes: 30),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Real-time racing".tr()),
      ),
      body: BlocConsumer<RideCubit, RideState>(
        listener: (context, state) {
          if (state is RideCreated) {
            AutoRouter.of(context)
                .replaceAll([RidePendingPageRoute(ride: state.ride)]);
          }

          if (state is RideError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.redAccent,
            ));
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'assets/sprint.jpeg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Colors.white10, Colors.white],
                                    )
                                  ),
                                  height: 80,
                                  width:
                                      MediaQuery.of(context).size.width - 40,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Sprint',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ).tr(),
                                      ),
                                      Text(
                                        'minute'.plural(times[0].inMinutes),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'assets/midrange.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20)),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [Colors.white10, Colors.white],
                                      ),
                                    ),
                                    height: 80,
                                    width:
                                        MediaQuery.of(context).size.width - 40,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Midrange distance',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ).tr(),
                                        ),
                                        Text(
                                          'minute'.plural(times[1].inMinutes),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'assets/long distance.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20)),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [Colors.white10, Colors.white],
                                      ),
                                    ),
                                    height: 80,
                                    width:
                                        MediaQuery.of(context).size.width - 40,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Long distance',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ).tr(),
                                        ),
                                        Text(
                                          'minute'.plural(times[2].inMinutes),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.all(20),
                  child: Text(
                          'Cover the maximum distance in a amount of limited time, competing in real time')
                      .tr(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 160,
                        child: ElevatedButton(
                          onPressed: () {
                            context
                                .read<RideCubit>()
                                .create(times[_tabController.index]);
                          },
                          child: Text('Create'.tr()),
                        ),
                      ),
                      Container(
                        width: 160,
                        child: ElevatedButton(
                          onPressed: () {
                            AutoRouter.of(context)
                                .push(const RideJoinPageRoute());
                          },
                          child: Text('Enter code'.tr()),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
