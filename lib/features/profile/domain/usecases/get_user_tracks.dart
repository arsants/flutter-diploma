import 'package:equatable/equatable.dart';
import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/profile/domain/entities/track.dart';
import 'package:katai/features/profile/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:katai/graphql/schema.schema.gql.dart';

class GetUserTracks implements UseCaseStream<List<Track>, GetUserTracksParams> {
  final UserRepository repository;

  GetUserTracks(this.repository);

  @override
  Stream<Either<Failure, List<Track>>> call(GetUserTracksParams params) =>
      repository.getUserTracks(
          params.username, params.duration, params.orderBy);
}

class GetUserTracksParams extends Equatable {
  final String username;
  final Duration duration;
  final GTrackOrderEnum orderBy;

  const GetUserTracksParams({
    required this.username,
    required this.duration,
    required this.orderBy,
  });

  @override
  List<Object> get props => [username, duration, orderBy];
}
