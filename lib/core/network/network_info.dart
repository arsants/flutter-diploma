
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}

//Data connection checker не поддерживает веб
class NetworkInfoImplForWeb implements NetworkInfo {
  @override
  Future<bool> get isConnected => Future.value(true);
}
