import 'package:auto_route/auto_route.dart';
import 'package:katai/core/router/router.gr.dart';
import 'package:katai/features/login/presentation/bloc/auth_bloc.dart';
import 'package:katai/features/login/presentation/bloc/auth_event.dart';
import 'package:katai/features/profile/domain/entities/track.dart';
import 'package:katai/features/profile/domain/entities/user.dart';
import 'package:katai/features/profile/presentation/bloc/cubit.dart';
import 'package:katai/features/profile/presentation/bloc/other_track_cubit.dart';
import 'package:katai/features/profile/presentation/bloc/other_user_cubit.dart';
import 'package:katai/features/profile/presentation/widgets/other_track_display.dart';
import 'package:katai/features/profile/presentation/widgets/user_display.dart';
import 'package:katai/features/profile/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:katai/features/ride/presentation/bloc/ride_cubit.dart';
import 'package:katai/features/ride/presentation/bloc/ride_state.dart';
import 'package:katai/graphql/schema.schema.gql.dart';
import 'package:lumberdash/lumberdash.dart';

class UserProfilePage extends StatefulWidget {
  final String username;

  const UserProfilePage({Key? key, required this.username}) : super(key: key);

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  late Future<void> getMeFuture;
  User? user;
  List<Track>? tracks;

  @override
  void initState() {
    super.initState();
    getMeFuture = getProfile();
  }

  Future<void> getProfile() async {
    context.read<OtherTrackCubit>().get(
        widget.username, Duration(minutes: 3), GTrackOrderEnum.DISTANCE_ASC);
    context.read<OtherUserCubit>().getUser(widget.username);
  }

  void dispatchLogOut() {
    BlocProvider.of<AuthBloc>(context).add(UserLogOut());
    AutoRouter.of(context).replaceAll([const AuthPageRoute()]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: Text(widget.username).tr(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: Container(
                    child: ColoredBox(
                      color: Colors.blue,
                    ),
                    height: 130,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: FutureBuilder(
                    future: getMeFuture,
                    builder: (context, snapshot) {
                      return BlocListener<RideCubit, RideState>(
                        listener: (BuildContext context, state) {
                          if (state is RideCreated) {
                            AutoRouter.of(context)
                                .push(RidePendingPageRoute(ride: state.ride));
                          }
                        },
                        child: Column(
                          children: [
                            BlocConsumer<OtherUserCubit, UserState>(
                                listener: (context, state) {
                              if (state is UserError) {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(state.message),
                                  backgroundColor: Colors.redAccent,
                                ));
                              }
                            }, builder: (context, state) {
                              if (state is UserInitial || state is UserLoading) {
                                return const Center(
                                    child: CircularProgressIndicator.adaptive());
                              }
                              if (state is UserGot) {
                                return UserDisplay(
                                  user: state.user,
                                  isMy: false,
                                );
                              }
                              return Center(child: Text('No User').tr());
                            }),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
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
                                  child: OtherTrackDisplayWidget(
                                      username: widget.username)),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
