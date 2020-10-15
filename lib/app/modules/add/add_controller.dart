import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'add_controller.g.dart';

@Injectable()
class AddController = _AddControllerBase with _$AddController;

abstract class _AddControllerBase with Store {
  List<String> options = ["Novo", "Cartões"];
  PageController tabPageController =
      PageController(initialPage: 0, viewportFraction: 1);

  @observable
  int selected = 0;

  @action
  setSelected(value) => selected = value;
}
