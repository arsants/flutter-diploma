import 'package:katai/core/error/failures.dart';

const cacheFailureMessage = 'Welcome to Katai';

String mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case CacheFailure:
      return cacheFailureMessage;
    case ServerFailure:
      return (failure as ServerFailure).errors.first.message.toString();
    default:
      return 'Unexpected error';
  }
}