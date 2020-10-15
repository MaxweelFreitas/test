import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'profile_controller.g.dart';

@Injectable()
class ProfileController = _ProfileControllerBase with _$ProfileController;

abstract class _ProfileControllerBase with Store {
  PageController avaluatePageController = PageController(viewportFraction: .8);
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
