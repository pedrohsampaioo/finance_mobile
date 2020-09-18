import 'package:dartz/dartz.dart';

import '../../../core/api/fake_api_client.dart';
import '../../../core/exceptions/fake_http_exception.dart';
import '../../../core/failures/failure.dart';
import '../models/user_model.dart';

class UserRepository {
  final FakeApiClient _client;

  const UserRepository(this._client);

  Future<Either<Failure, UserModel>> fetchInformation() async {
    try {
      final response = await _client.dataInJson();
      final user = UserModel.fromJson(response['data'] as Map<String, dynamic>);
      return right(user);
    } on FakeHttpException {
      return left(ApiFailure());
    }
  }
}
