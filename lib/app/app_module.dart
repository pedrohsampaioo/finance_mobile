import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_widget.dart';
import 'modules/auth/auth_module.dart';
import 'modules/home/home_module.dart';
import 'modules/recent_transactions/recent_transactions_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', module: AuthModule()),
        ModularRouter('/home', module: HomeModule()),
        ModularRouter('/recent_transactions',
            module: RecentTransactionsModule()),
      ];
}
