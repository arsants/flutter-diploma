import 'package:equatable/equatable.dart';
import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/profile/domain/entities/track.dart';
import 'package:katai/features/profile/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:katai/graphql/schema.schema.gql.dart';

class GetMyTracks implements UseCaseStream<List<Track>, GetMyTracksParams> {
  final UserRepository repository;

  GetMyTracks(this.repository);

  @override
  Stream<Either<Failure, List<Track>>> call(GetMyTracksParams params) =>
      repository.getMyTracks(params.duration, params.orderBy);
}

class GetMyTracksParams extends Equatable {
  final Duration duration;
  final GTrackOrderEnum orderBy;

  const GetMyTracksParams({
    required this.duration,
    required this.orderBy,
  });

  @override
  List<Object> get props => [duration, orderBy];
}
