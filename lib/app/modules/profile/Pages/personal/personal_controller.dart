import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'personal_controller.g.dart';

@Injectable()
class PersonalController = _PersonalControllerBase with _$PersonalController;

abstract class _PersonalControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
