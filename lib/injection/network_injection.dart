import 'package:katai/core/network/graphql/link.dart';
import 'package:katai/core/network/network_info.dart';
import 'package:katai/core/network/websocket/events.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/login/data/models/auth_model.dart';
import 'package:katai/features/login/domain/usecases/auth_usecases.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:flutter/foundation.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'injection_container.dart';

Future<void> initNetwork(String baseURL, Box graphQL) async {
  // Core
  if (!kIsWeb) {
    sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  } else {
    sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImplForWeb());
  }

  sl.registerLazySingleton<Client>(() {
    final store = HiveStore(graphQL);

    final headersLink = HeadersLink();

    final cache = Cache(store: store);

    final client = Client(
      link: Link.from(
          [headersLink, HttpLink(baseURL)]),
      cache: cache,
      defaultFetchPolicies: {
        OperationType.query: FetchPolicy.CacheAndNetwork,
      },
    );

    return client;
  });


  sl.registerLazySingleton(() => InternetConnectionChecker());
}
