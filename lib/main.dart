import 'package:easy_localization/easy_localization.dart';
import 'package:katai/core/router/router.gr.dart';
import 'package:katai/features/login/presentation/bloc/auth_bloc.dart';
import 'package:katai/features/map/presentation/bloc/map_cubit.dart';
import 'package:katai/features/profile/presentation/bloc/cubit.dart';
import 'package:katai/features/profile/presentation/bloc/other_user_cubit.dart';
import 'package:katai/features/profile/presentation/bloc/track_cubit.dart';
import 'package:katai/injection/injection_container.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumberdash/lumberdash.dart';
import 'package:print_lumberdash/print_lumberdash.dart';
import 'package:url_strategy/url_strategy.dart';
import 'features/leaderboard/presentation/bloc/leaderboard_cubit.dart';
import 'features/profile/presentation/bloc/other_track_cubit.dart';
import 'features/ride/presentation/bloc/ride_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  setPathUrlStrategy();

  await Firebase.initializeApp();

  putLumberdashToWork(withClients: [
    PrintLumberdash(),
  ]);

  // Crashlytics
  if (kDebugMode) {
    //Для веба
    if (!kIsWeb) {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
    }
  } else {
    //Для веба
    if (!kIsWeb) {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    }
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  }


  await initDI();
  runApp(EasyLocalization(
    supportedLocales: [
      Locale('en'),
      Locale('ru'),
    ],
    path: 'locales/translations',
    child: MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) => sl(),
        ),
        BlocProvider<UserCubit>(
          create: (_) => sl(),
        ),
        BlocProvider<MapCubit>(
          create: (_) => sl(),
        ),
        BlocProvider<LeaderBoardCubit>(
          create: (_) => sl(),
        ),
        BlocProvider<RideCubit>(
          create: (_) => sl(),
        ),
        BlocProvider<OtherUserCubit>(
          create: (_) => sl(),
        ),
        BlocProvider<TrackCubit>(
          create: (_) => sl(),
        ),
        BlocProvider<OtherTrackCubit>(
          create: (_) => sl(),
        ),
      ],
      child: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  final _appRouter = ModularRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Bicycle Riders App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routerDelegate:
          _appRouter.delegate(initialRoutes: [const AuthPageRoute()]),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
