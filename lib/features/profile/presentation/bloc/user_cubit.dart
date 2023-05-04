import 'dart:async';

import 'package:katai/core/error/failuremap.dart';
import 'package:katai/core/error/failures.dart';
import 'package:katai/core/usecases/usecase.dart';
import 'package:katai/features/profile/domain/entities/user.dart';
import 'package:katai/features/profile/domain/usecases/user_usecases.dart';
import 'package:katai/features/profile/presentation/bloc/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UserState> {
  User? _user;

  User? get user => _user;

  StreamSubscription? _subscription;
  final GetMyProfile getMyProfile;
  final UpdateUser updateUser;
  final UpdatePublic updatePublic;

  UserCubit({
    required this.getMyProfile,
    required this.updatePublic,
    required this.updateUser,
  }) : super(UserInitial());

  Future<void> getMe() async {
    final getResult = getMyProfile(NoParams());

    await _subscription?.cancel();

    _subscription = getResult.listen((event) {
      event.fold(
          (Failure failure) =>
              emit(UserError(message: mapFailureToMessage(failure))),
          (User user) {
        _user = user;
        emit(UserGot(user: user));
      });
    });
  }

  Future<void> update(String firstName, String lastName, String username,
      String telegram) async {
    final updateResult = await updateUser(UpdateUserParams(
        firstName: firstName,
        lastName: lastName,
        username: username,
        telegram: telegram));

    return updateResult.fold(
      (Failure failure) =>
          emit(UserError(message: mapFailureToMessage(failure))),
      (User user) => emit(UserUpdated(user: user)),
    );
  }

  Future<void> updatePrivacy(bool isPublic) async {
    final updateResult =
        await updatePublic(UpdatePublicParams(isPublic: isPublic));

    return updateResult.fold(
      (Failure failure) =>
          emit(UserError(message: mapFailureToMessage(failure))),
      (r) => null,
    );
  }
}
