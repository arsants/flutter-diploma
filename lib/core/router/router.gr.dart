// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/widgets.dart' as _i14;

import '../../features/debug/pages/index.dart' as _i2;
import '../../features/leaderboard/presentation/pages/leaderboard_page.dart'
    as _i7;
import '../../features/login/presentation/pages/auth_page.dart' as _i3;
import '../../features/profile/presentation/pages/profile_page.dart' as _i4;
import '../../features/profile/presentation/pages/settings_page.dart' as _i6;
import '../../features/profile/presentation/pages/user_profile_page.dart'
    as _i5;
import '../../features/ride/domain/entities/ride.dart' as _i15;
import '../../features/ride/presentation/pages/ride_create_page.dart' as _i9;
import '../../features/ride/presentation/pages/ride_join_page.dart' as _i10;
import '../../features/ride/presentation/pages/ride_page.dart' as _i8;
import '../../features/ride/presentation/pages/ride_pending_page.dart' as _i11;
import '../../features/ride/presentation/pages/ride_prestart_page.dart' as _i12;
import '../../features/ride/presentation/pages/ride_result_page.dart' as _i13;

class ModularRouter extends _i1.RootStackRouter {
  ModularRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    IndexPageRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: _i2.IndexPage(), maintainState: false);
    },
    AuthPageRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: _i3.AuthPage(), maintainState: false);
    },
    ProfilePageRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: _i4.ProfilePage(), maintainState: false);
    },
    UserProfilePageRoute.name: (entry) {
      var args = entry.routeData.argsAs<UserProfilePageRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i5.UserProfilePage(key: args.key, username: args.username),
          maintainState: false);
    },
    SettingsPageRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: _i6.SettingsPage(), maintainState: false);
    },
    LeaderBoardPageRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: _i7.LeaderBoardPage(), maintainState: false);
    },
    RidePageRoute.name: (entry) {
      var args = entry.routeData.argsAs<RidePageRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i8.RidePage(key: args.key, ride: args.ride),
          maintainState: false);
    },
    RideCreatePageRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: _i9.RideCreatePage(), maintainState: false);
    },
    RideJoinPageRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: _i10.RideJoinPage(), maintainState: false);
    },
    RidePendingPageRoute.name: (entry) {
      var args = entry.routeData.argsAs<RidePendingPageRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i11.RidePendingPage(key: args.key, ride: args.ride),
          maintainState: false);
    },
    RidePreStartPageRoute.name: (entry) {
      var args = entry.routeData.argsAs<RidePreStartPageRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i12.RidePreStartPage(key: args.key, ride: args.ride),
          maintainState: false);
    },
    RideResultPageRoute.name: (entry) {
      var args = entry.routeData.argsAs<RideResultPageRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i13.RideResultPage(key: args.key, ride: args.ride),
          maintainState: false);
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(IndexPageRoute.name, path: '/'),
        _i1.RouteConfig(AuthPageRoute.name, path: '/login'),
        _i1.RouteConfig(ProfilePageRoute.name, path: '/profile'),
        _i1.RouteConfig(UserProfilePageRoute.name, path: '/user_profile'),
        _i1.RouteConfig(SettingsPageRoute.name, path: '/profile/settings'),
        _i1.RouteConfig(LeaderBoardPageRoute.name, path: '/leaderboard'),
        _i1.RouteConfig(RidePageRoute.name, path: '/competition'),
        _i1.RouteConfig(RideCreatePageRoute.name, path: '/competition/create'),
        _i1.RouteConfig(RideJoinPageRoute.name, path: '/competition/join'),
        _i1.RouteConfig(RidePendingPageRoute.name,
            path: '/competition/pending'),
        _i1.RouteConfig(RidePreStartPageRoute.name,
            path: '/competition/prestart'),
        _i1.RouteConfig(RideResultPageRoute.name, path: '/competition/result')
      ];
}

class IndexPageRoute extends _i1.PageRouteInfo {
  const IndexPageRoute() : super(name, path: '/');

  static const String name = 'IndexPageRoute';
}

class AuthPageRoute extends _i1.PageRouteInfo {
  const AuthPageRoute() : super(name, path: '/login');

  static const String name = 'AuthPageRoute';
}

class ProfilePageRoute extends _i1.PageRouteInfo {
  const ProfilePageRoute() : super(name, path: '/profile');

  static const String name = 'ProfilePageRoute';
}

class UserProfilePageRoute extends _i1.PageRouteInfo<UserProfilePageRouteArgs> {
  UserProfilePageRoute({_i14.Key? key, required String username})
      : super(name,
            path: '/user_profile',
            args: UserProfilePageRouteArgs(key: key, username: username));

  static const String name = 'UserProfilePageRoute';
}

class UserProfilePageRouteArgs {
  const UserProfilePageRouteArgs({this.key, required this.username});

  final _i14.Key? key;

  final String username;
}

class SettingsPageRoute extends _i1.PageRouteInfo {
  const SettingsPageRoute() : super(name, path: '/profile/settings');

  static const String name = 'SettingsPageRoute';
}

class LeaderBoardPageRoute extends _i1.PageRouteInfo {
  const LeaderBoardPageRoute() : super(name, path: '/leaderboard');

  static const String name = 'LeaderBoardPageRoute';
}

class RidePageRoute extends _i1.PageRouteInfo<RidePageRouteArgs> {
  RidePageRoute({_i14.Key? key, required _i15.Ride ride})
      : super(name,
            path: '/competition',
            args: RidePageRouteArgs(key: key, ride: ride));

  static const String name = 'RidePageRoute';
}

class RidePageRouteArgs {
  const RidePageRouteArgs({this.key, required this.ride});

  final _i14.Key? key;

  final _i15.Ride ride;
}

class RideCreatePageRoute extends _i1.PageRouteInfo {
  const RideCreatePageRoute() : super(name, path: '/competition/create');

  static const String name = 'RideCreatePageRoute';
}

class RideJoinPageRoute extends _i1.PageRouteInfo {
  const RideJoinPageRoute() : super(name, path: '/competition/join');

  static const String name = 'RideJoinPageRoute';
}

class RidePendingPageRoute extends _i1.PageRouteInfo<RidePendingPageRouteArgs> {
  RidePendingPageRoute({_i14.Key? key, required _i15.Ride ride})
      : super(name,
            path: '/competition/pending',
            args: RidePendingPageRouteArgs(key: key, ride: ride));

  static const String name = 'RidePendingPageRoute';
}

class RidePendingPageRouteArgs {
  const RidePendingPageRouteArgs({this.key, required this.ride});

  final _i14.Key? key;

  final _i15.Ride ride;
}

class RidePreStartPageRoute
    extends _i1.PageRouteInfo<RidePreStartPageRouteArgs> {
  RidePreStartPageRoute({_i14.Key? key, required _i15.Ride ride})
      : super(name,
            path: '/competition/prestart',
            args: RidePreStartPageRouteArgs(key: key, ride: ride));

  static const String name = 'RidePreStartPageRoute';
}

class RidePreStartPageRouteArgs {
  const RidePreStartPageRouteArgs({this.key, required this.ride});

  final _i14.Key? key;

  final _i15.Ride ride;
}

class RideResultPageRoute extends _i1.PageRouteInfo<RideResultPageRouteArgs> {
  RideResultPageRoute({_i14.Key? key, required _i15.Ride ride})
      : super(name,
            path: '/competition/result',
            args: RideResultPageRouteArgs(key: key, ride: ride));

  static const String name = 'RideResultPageRoute';
}

class RideResultPageRouteArgs {
  const RideResultPageRouteArgs({this.key, required this.ride});

  final _i14.Key? key;

  final _i15.Ride ride;
}
