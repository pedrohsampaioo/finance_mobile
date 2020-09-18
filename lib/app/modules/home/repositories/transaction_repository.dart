import 'package:dartz/dartz.dart';

import '../../../core/api/fake_api_client.dart';
import '../../../core/exceptions/fake_http_exception.dart';
import '../../../core/failures/failure.dart';
import '../models/transaction_model.dart';

class TransactionRepository {
  final FakeApiClient _client;

  const TransactionRepository(this._client);

  Future<Either<Failure, List<TransactionModel>>> fetchAll() async {
    try {
      final response = await _client.dataInJson();
      final transactions = (response['data'] as List)
          .map<TransactionModel>(
            (transaction) => TransactionModel.fromJson(transaction),
          )
          .toList();
      return right(transactions);
    } on FakeHttpException {
      return left(ApiFailure());
    }
  }
}
