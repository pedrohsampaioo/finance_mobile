import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/failures/failure.dart';
import '../../models/user_model.dart';
import '../../repositories/user_repository.dart';

part 'user_cubit.freezed.dart';
part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final UserRepository _repository;
  UserCubit(this._repository) : super(UserState.started());

  Future<void> fetchInformation() async {
    emit(UserState.loadInProgress());
    final failureOrSuccess = await _repository.fetchInformation();
    failureOrSuccess.fold(
      (failure) => emit(UserState.loadFailure(failure)),
      (user) => emit(UserState.loadSuccess(user)),
    );
  }
}
