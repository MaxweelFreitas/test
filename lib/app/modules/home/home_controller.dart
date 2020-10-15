import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store implements Disposable {
  PageController pageController = PageController(initialPage: 0);
  int get indexPage => pageController?.page?.round() ?? 0;

  @override
  void dispose() {
    pageController.dispose();
  }
}
