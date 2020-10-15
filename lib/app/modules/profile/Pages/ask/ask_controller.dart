import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'ask_controller.g.dart';

@Injectable()
class AskController = _AskControllerBase with _$AskController;

abstract class _AskControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
