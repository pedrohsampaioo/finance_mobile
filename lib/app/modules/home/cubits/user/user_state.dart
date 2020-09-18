part of 'user_cubit.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.started() = UserStarted;
  const factory UserState.loadInProgress() = UserLoadInProgress;
  const factory UserState.loadSuccess(
    UserModel user,
  ) = UserLoadSuccess;
  const factory UserState.loadFailure(
    Failure failure,
  ) = UserLoadFailure;
}
