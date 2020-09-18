import 'dart:math';

import '../exceptions/fake_http_exception.dart';

class FakeApiClient {
  final Map<String, dynamic> jsonToReturn;

  const FakeApiClient(this.jsonToReturn) : assert(jsonToReturn != null);

  Future<dynamic> dataInJson() async {
    await Future.delayed(const Duration(seconds: 2));
    final random = Random();
    if (random.nextBool()) {
      throw FakeHttpException();
    }
    return jsonToReturn;
  }
}
