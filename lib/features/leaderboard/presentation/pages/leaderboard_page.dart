import 'package:auto_route/auto_route.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:katai/core/router/router.gr.dart';
import 'package:katai/core/util/meters_display.dart';
import 'package:katai/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:katai/features/leaderboard/presentation/bloc/leaderboard_cubit.dart';
import 'package:katai/features/leaderboard/presentation/bloc/leaderboard_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katai/features/ride/presentation/bloc/ride_cubit.dart';
import 'package:katai/features/ride/presentation/bloc/ride_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:lumberdash/lumberdash.dart';

class LeaderBoardPage extends StatefulWidget {
  @override
  _LeaderBoardPageState createState() => _LeaderBoardPageState();
}

class _LeaderBoardPageState extends State<LeaderBoardPage>
    with TickerProviderStateMixin {
  LeaderBoard leaderBoard = LeaderBoard(users: []);
  late TabController _tabController;

  List<Duration> times = [
    Duration(minutes: 3),
    Duration(minutes: 15),
    Duration(minutes: 30),
  ];

  @override
  void initState() {
    super.initState();
    context.read<LeaderBoardCubit>().get(times[0]);
    _tabController = TabController(vsync: this, length: 3);
    _tabController.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> getLeaderBoard() async {
    await context.read<LeaderBoardCubit>().get(times[_tabController.index]);
  }

  void _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      getLeaderBoard();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Leaderboard").tr(),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: 'Sprint'.tr()),
              Tab(text: 'Midrange'.tr()),
              Tab(text: 'Long'.tr()),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            BlocListener<RideCubit, RideState>(
              listener: (BuildContext context, state) {
                if (state is RideCreated) {
                  AutoRouter.of(context)
                      .push(RidePendingPageRoute(ride: state.ride));
                }
              },
              child: BlocConsumer<LeaderBoardCubit, LeaderBoardState>(
                listener: (context, state) {
                  if (state is LeaderBoardGot) {
                    leaderBoard = state.leaderBoard;
                  }

                  if (state is LeaderBoardError) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(state.message),
                      backgroundColor: Colors.redAccent,
                    ));
                  }
                },
                builder: (context, state) {
                  if (state is LeaderBoardInitial ||
                      state is LeaderBoardLoading) {
                    return const Center(child: CircularProgressIndicator.adaptive());
                  }

                  if (state is LeaderBoardGot) {
                    if (leaderBoard.users.isEmpty) {
                      return Center(
                        child: Text('No users').tr(),
                      );
                    }
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        final user = leaderBoard.users[index];
                        return ListTile(
                          minLeadingWidth: 16,
                          leading: Text(
                            "${index + 1}",
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: IconButton(
                            icon: Icon(FontAwesomeIcons.arrowRight),
                            onPressed: () {
                              context
                                  .read<RideCubit>()
                                  .create_historic(user.trackId);
                            },
                          ),
                          title: Row(
                            children: [
                              SizedBox(
                                width: 170,
                                child: user.lastname == ""
                                    ? Text(user.username)
                                    : Text("${user.fistname} ${user.lastname}"),
                              ),
                              Text(metersFormat(user.distanceMeters.toInt()))
                            ],
                          ),
                          onTap: () async {
                            AutoRouter.of(context).push(
                                UserProfilePageRoute(username: user.username));
                          },
                        );
                      },
                      itemCount: leaderBoard.users.length,
                    );
                  }
                  return Center(
                    child: Text('No leaderboard').tr(),
                  );
                },
              ),
            ),
            BlocListener<RideCubit, RideState>(
              listener: (BuildContext context, state) {
                if (state is RideCreated) {
                  AutoRouter.of(context)
                      .push(RidePendingPageRoute(ride: state.ride));
                }
              },
              child: BlocConsumer<LeaderBoardCubit, LeaderBoardState>(
                listener: (context, state) {
                  if (state is LeaderBoardGot) {
                    leaderBoard = state.leaderBoard;
                  }

                  if (state is LeaderBoardError) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(state.message),
                      backgroundColor: Colors.redAccent,
                    ));
                  }
                },
                builder: (context, state) {
                  if (state is LeaderBoardInitial ||
                      state is LeaderBoardLoading) {
                    return const Center(child: CircularProgressIndicator.adaptive());
                  }

                  if (state is LeaderBoardGot) {
                    if (leaderBoard.users.isEmpty) {
                      return Center(
                        child: Text('No users').tr(),
                      );
                    }
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        final user = leaderBoard.users[index];
                        return ListTile(
                          minLeadingWidth: 16,
                          leading: Text(
                            "${index + 1}",
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: IconButton(
                            icon: Icon(FontAwesomeIcons.arrowRight),
                            onPressed: () {
                              context
                                  .read<RideCubit>()
                                  .create_historic(user.trackId);
                            },
                          ),
                          title: Row(
                            children: [
                              SizedBox(
                                width: 170,
                                child: user.lastname == ""
                                    ? Text(user.username)
                                    : Text("${user.fistname} ${user.lastname}"),
                              ),
                              Text(metersFormat(user.distanceMeters.toInt()))
                            ],
                          ),
                          onTap: () async {
                            AutoRouter.of(context).push(
                                UserProfilePageRoute(username: user.username));
                          },
                        );
                      },
                      itemCount: leaderBoard.users.length,
                    );
                  }

                  return Center(
                    child: Text('No leaderboard').tr(),
                  );
                },
              ),
            ),
            BlocListener<RideCubit, RideState>(
              listener: (BuildContext context, state) {
                if (state is RideCreated) {
                  AutoRouter.of(context)
                      .push(RidePendingPageRoute(ride: state.ride));
                }
              },
              child: BlocConsumer<LeaderBoardCubit, LeaderBoardState>(
                listener: (context, state) {
                  if (state is LeaderBoardGot) {
                    leaderBoard = state.leaderBoard;
                  }

                  if (state is LeaderBoardError) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(state.message),
                      backgroundColor: Colors.redAccent,
                    ));
                  }
                },
                builder: (context, state) {
                  if (state is LeaderBoardInitial ||
                      state is LeaderBoardLoading) {
                    return const Center(child: CircularProgressIndicator.adaptive());
                  }

                  if (state is LeaderBoardGot) {
                    if (leaderBoard.users.isEmpty) {
                      return Center(
                        child: Text('No users').tr(),
                      );
                    }
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        final user = leaderBoard.users[index];
                        return ListTile(
                          minLeadingWidth: 16,
                          leading: Text(
                            "${index + 1}",
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: IconButton(
                            icon: Icon(FontAwesomeIcons.arrowRight),
                            onPressed: () {
                              context
                                  .read<RideCubit>()
                                  .create_historic(user.trackId);
                            },
                          ),
                          title: Row(
                            children: [
                              SizedBox(
                                width: 170,
                                child: user.lastname == ""
                                    ? Text(user.username)
                                    : Text("${user.fistname} ${user.lastname}"),
                              ),
                              Text(metersFormat(user.distanceMeters.toInt()))
                            ],
                          ),
                          onTap: () async {
                            AutoRouter.of(context).push(
                                UserProfilePageRoute(username: user.username));
                          },
                        );
                      },
                      itemCount: leaderBoard.users.length,
                    );
                  }

                  return Center(
                    child: Text('No leaderboard').tr(),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
