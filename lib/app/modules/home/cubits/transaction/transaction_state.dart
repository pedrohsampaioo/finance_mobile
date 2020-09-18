part of 'transaction_cubit.dart';

@freezed
abstract class TransactionState with _$TransactionState {
  const factory TransactionState.started() = TransactionStarted;
  const factory TransactionState.loadInProgress() = TransactionLoadInProgress;
  const factory TransactionState.loadSuccess(
    List<TransactionModel> transactions,
  ) = TransactionLoadSuccess;
  const factory TransactionState.loadFailure(
    Failure failure,
  ) = TransactionLoadFailure;
}
