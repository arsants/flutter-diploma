import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'all_injection.dart';

final sl = GetIt.instance;

Future<void> initDI() async {
  const baseURL = "https://api-new.ekbicycle.ru/graphql/";

  // External
  if (!kIsWeb) {
    final directory = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(directory.path);
  }

  //Hive
  final graphQL = await Hive.openBox('graphQL');

  //Network
  await initNetwork(baseURL, graphQL);

  //Features
  await initAuthFeature();
  await initUserFeature();
  await initMapFeature();
  await initLeaderBoardFeature();
  await initRideFeature();
  await initTrackFeature();
}
