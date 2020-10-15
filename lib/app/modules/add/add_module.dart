import 'add_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'add_page.dart';

class AddModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $AddController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => AddPage()),
      ];

  static Inject get to => Inject<AddModule>.of();
}
