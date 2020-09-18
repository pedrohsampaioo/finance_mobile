import 'package:flutter_modular/flutter_modular.dart';

import '../../core/api/fake_api_client.dart';
import '../../shared/fixtures/fixture_reader.dart';
import 'cubits/transaction/transaction_cubit.dart';
import 'cubits/user/user_cubit.dart';
import 'home_page.dart';
import 'repositories/transaction_repository.dart';
import 'repositories/user_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => UserRepository(FakeApiClient(FixtureReader.user))),
        Bind((i) =>
            TransactionRepository(FakeApiClient(FixtureReader.transactions))),
        Bind((i) => TransactionCubit(i.get<TransactionRepository>())),
        Bind((i) => UserCubit(i.get<UserRepository>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => HomePage()),
      ];
}
