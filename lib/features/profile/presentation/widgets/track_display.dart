import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:katai/core/router/router.gr.dart';
import 'package:katai/core/util/meters_display.dart';
import 'package:katai/features/profile/domain/entities/track.dart';
import 'package:katai/features/profile/presentation/bloc/cubit.dart';
import 'package:katai/features/ride/presentation/bloc/ride_cubit.dart';
import 'package:katai/features/ride/presentation/bloc/ride_state.dart';
import 'package:katai/graphql/schema.schema.gql.dart';

class TrackDisplayWidget extends StatefulWidget {
  @override
  _TrackDisplayWidgetState createState() => _TrackDisplayWidgetState();
}

class _TrackDisplayWidgetState extends State<TrackDisplayWidget>
    with TickerProviderStateMixin {
  List<Track> tracks = [];
  late TabController _tabController;

  List<Duration> times = [
    Duration(minutes: 3),
    Duration(minutes: 15),
    Duration(minutes: 30),
  ];

  Map<int, dynamic> filterList = {
    0: GTrackOrderEnum.DISTANCE_ASC,
    1: GTrackOrderEnum.DISTANCE_DESC,
    2: GTrackOrderEnum.START_TIME_ASC,
    3: GTrackOrderEnum.START_TIME_DESC,
  };

  int _selectedFilter = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _tabController.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> getTrack() async {
    await context
        .read<TrackCubit>()
        .get(times[_tabController.index], filterList[_selectedFilter]);
  }

  void _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      getTrack();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal :8),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    iconEnabledColor: Colors.white,
                    dropdownColor: Colors.blue,
                    style: TextStyle(color: Colors.white),
                    value: _selectedFilter,
                    items: [
                      DropdownMenuItem(
                        child: Text("Distance ascending").tr(),
                        value: 0,
                      ),
                      DropdownMenuItem(
                        child: Text("Distance descending").tr(),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("Time ascending").tr(),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text("Time descending").tr(),
                        value: 3,
                      ),
                    ],
                    onChanged: (int? value) {
                      setState(() {
                        _selectedFilter = value!;
                      });
                      getTrack();
                    },
                  ),
                ),
              )
            ],
            title: Text('Rides').tr(),
            centerTitle: false,
            automaticallyImplyLeading: false,
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
            controller: _tabController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              BlocListener<RideCubit, RideState>(
                listener: (BuildContext context, state) {
                  if (state is RideCreated) {
                    AutoRouter.of(context)
                        .push(RidePendingPageRoute(ride: state.ride));
                  }
                },
                child: BlocConsumer<TrackCubit, TrackState>(
                  listener: (context, state) {
                    if (state is TrackGot) {
                      tracks = state.tracks;
                    }

                    if (state is TrackError) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(state.message),
                        backgroundColor: Colors.redAccent,
                      ));
                    }
                  },
                  builder: (context, state) {
                    if (state is TrackInitial || state is TrackLoading) {
                      return const Center(child: CircularProgressIndicator.adaptive());
                    }

                    if (state is TrackGot) {
                      if (tracks.isEmpty) {
                        return Center(
                          child: Text('No tracks').tr(),
                        );
                      }
                      return ListView.builder(
                        itemBuilder: (context, index) {
                          final track = tracks[index];
                          return ListTile(
                            trailing: IconButton(
                              icon: Icon(FontAwesomeIcons.arrowRight),
                              onPressed: () {
                                context
                                    .read<RideCubit>()
                                    .create_historic(track.trackId);
                              },
                            ),
                            title: Row(
                              children: [
                                Container(
                                    width: 160,
                                    child: Text(DateFormat('yyyy-MM-dd kk:mm')
                                        .format(track.endTime))),
                                Text(metersFormat(track.distanceMeters.toInt()))
                              ],
                            ),
                          );
                        },
                        itemCount: tracks.length,
                      );
                    }
                    return const Center(
                      child: Text('No tracks'),
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
                child: BlocConsumer<TrackCubit, TrackState>(
                  listener: (context, state) {
                    if (state is TrackGot) {
                      tracks = state.tracks;
                    }

                    if (state is TrackError) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(state.message),
                        backgroundColor: Colors.redAccent,
                      ));
                    }
                  },
                  builder: (context, state) {
                    if (state is TrackInitial || state is TrackLoading) {
                      return const Center(child: CircularProgressIndicator.adaptive());
                    }

                    if (state is TrackGot) {
                      if (tracks.isEmpty) {
                        return Center(
                          child: Text('No tracks').tr(),
                        );
                      }
                      return ListView.builder(
                        itemBuilder: (context, index) {
                          final track = tracks[index];
                          return ListTile(
                            trailing: IconButton(
                              icon: Icon(FontAwesomeIcons.arrowRight),
                              onPressed: () {
                                context
                                    .read<RideCubit>()
                                    .create_historic(track.trackId);
                              },
                            ),
                            title: Row(
                              children: [
                                Container(
                                    width: 160,
                                    child: Text(DateFormat('yyyy-MM-dd kk:mm')
                                        .format(track.endTime))),
                                Text(metersFormat(track.distanceMeters.toInt()))
                              ],
                            ),
                          );
                        },
                        itemCount: tracks.length,
                      );
                    }
                    return const Center(
                      child: Text('No tracks'),
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
                child: BlocConsumer<TrackCubit, TrackState>(
                  listener: (context, state) {
                    if (state is TrackGot) {
                      tracks = state.tracks;
                    }

                    if (state is TrackError) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(state.message),
                        backgroundColor: Colors.redAccent,
                      ));
                    }
                  },
                  builder: (context, state) {
                    if (state is TrackInitial || state is TrackLoading) {
                      return const Center(child: CircularProgressIndicator.adaptive());
                    }

                    if (state is TrackGot) {
                      if (tracks.isEmpty) {
                        return Center(
                          child: Text('No tracks').tr(),
                        );
                      }
                      return ListView.builder(
                        itemBuilder: (context, index) {
                          final track = tracks[index];
                          return ListTile(
                            trailing: IconButton(
                              icon: Icon(FontAwesomeIcons.arrowRight),
                              onPressed: () {
                                context
                                    .read<RideCubit>()
                                    .create_historic(track.trackId);
                              },
                            ),
                            title: Row(
                              children: [
                                Container(
                                    width: 160,
                                    child: Text(DateFormat('yyyy-MM-dd kk:mm')
                                        .format(track.endTime))),
                                Text(metersFormat(track.distanceMeters.toInt()))
                              ],
                            ),
                          );
                        },
                        itemCount: tracks.length,
                      );
                    }
                    return const Center(
                      child: Text('No tracks'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
