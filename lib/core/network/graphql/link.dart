import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/login/domain/usecases/get_auth.dart';
import 'package:katai/injection/injection_container.dart';
import 'package:ferry/ferry.dart';
import 'package:gql_exec/src/request.dart';
import 'package:gql_exec/src/response.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:rxdart/rxdart.dart';

class HeadersLink extends Link {
  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    final GetAuth getAuth = sl();
    final authResult = getAuth(NoParams());

    yield* Stream.fromFuture(authResult).switchMap((result) {
      return result.fold(
          (l) => forward!(request),
          (r) => forward!(request.withContextEntry(HttpLinkHeaders(
              headers: {'Authorization': "Bearer ${r.accessToken}"}))));
    });
  }
}
