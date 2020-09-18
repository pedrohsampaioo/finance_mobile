import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/failures/failure.dart';
import '../../models/transaction_model.dart';
import '../../repositories/transaction_repository.dart';

part 'transaction_cubit.freezed.dart';
part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  final TransactionRepository _repository;
  TransactionCubit(this._repository) : super(TransactionState.started());

  Future<void> fetchAll() async {
    emit(TransactionState.loadInProgress());
    final failureOrSuccess = await _repository.fetchAll();
    failureOrSuccess.fold(
      (failure) => emit(TransactionState.loadFailure(failure)),
      (transactions) => emit(TransactionState.loadSuccess(transactions)),
    );
  }
}
