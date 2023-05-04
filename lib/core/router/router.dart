import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:katai/features/profile/presentation/pages/settings_page.dart';
import 'package:katai/features/profile/presentation/pages/user_profile_page.dart';
import 'package:katai/features/ride/presentation/pages/ride_create_page.dart';
import 'package:katai/features/ride/presentation/pages/ride_join_page.dart';
import 'package:katai/features/ride/presentation/pages/ride_pending_page.dart';
import 'package:katai/features/ride/presentation/pages/ride_result_page.dart';
import 'package:katai/features/ride/presentation/pages/ride_page.dart';
import 'package:katai/features/ride/presentation/pages/ride_prestart_page.dart';
import 'package:katai/features/debug/pages/index.dart';
import 'package:katai/features/leaderboard/presentation/pages/leaderboard_page.dart';
import 'package:katai/features/login/presentation/pages/auth_page.dart';
import 'package:katai/features/profile/presentation/pages/profile_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: IndexPage, maintainState: false),
    AutoRoute(
        path: '/login', page: AuthPage, initial: true, maintainState: false),
    AutoRoute(path: '/profile', page: ProfilePage, maintainState: false),
    AutoRoute(path: '/user_profile', page: UserProfilePage, maintainState: false),
    AutoRoute(path: '/profile/settings', page: SettingsPage, maintainState: false),
    AutoRoute(
        path: '/leaderboard', page: LeaderBoardPage, maintainState: false),
    AutoRoute(path: '/competition', page: RidePage, maintainState: false),
    AutoRoute(
        path: '/competition/create',
        page: RideCreatePage,
        maintainState: false),
    AutoRoute(
        path: '/competition/join', page: RideJoinPage, maintainState: false),
    AutoRoute(
        path: '/competition/pending',
        page: RidePendingPage,
        maintainState: false),
    AutoRoute(
        path: '/competition/prestart',
        page: RidePreStartPage,
        maintainState: false),
    AutoRoute(
        path: '/competition/result',
        page: RideResultPage,
        maintainState: false),
  ],
)
class $ModularRouter {}

//flutter pub run build_runner watch --delete-conflicting-outputs
