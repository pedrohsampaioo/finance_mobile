import 'package:flutter_modular/flutter_modular.dart';

import 'auth_page.dart';

class AuthModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => AuthPage()),
      ];
}
