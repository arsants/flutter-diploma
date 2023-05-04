import 'dart:async';

import 'package:katai/core/error/failuremap.dart';
import 'package:katai/core/error/failures.dart';
import 'package:katai/features/profile/domain/entities/user.dart';
import 'package:katai/features/profile/domain/usecases/user_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katai/features/profile/presentation/bloc/user_state.dart';

class OtherUserCubit extends Cubit<UserState> {
  User? _user;

  User? get user => _user;

  StreamSubscription? _userSub;
  final GetUserProfile getUserProfile;

  OtherUserCubit({
    required this.getUserProfile,
  }) : super(UserInitial());

  Future<void> getUser(String username) async {
    emit(UserLoading());
    final getResult = getUserProfile(GetUserProfileParams(username: username));

    await _userSub?.cancel();

    _userSub = getResult.listen((event) {
      event.fold(
          (Failure failure) =>
              emit(UserError(message: mapFailureToMessage(failure))),
          (User user) {
        _user = user;
        emit(UserGot(user: user));
      });
    });
  }
}
