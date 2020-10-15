import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:test_hubo/app/core/components/bottom_bar/custom_bottom_bar_item.dart';
import 'package:test_hubo/app/core/components/bottom_bar/custom_bottom_navigation_bar.dart';
import 'package:test_hubo/app/modules/add/add_module.dart';
import 'package:test_hubo/app/modules/profile/profile_module.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  final int pageSelected;
  const HomePage({
    Key key,
    this.title = "Home",
    this.pageSelected,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Observer(
        builder: (_) {
          return PageView(
            controller: controller.pageController,
            children: <Widget>[
              Container(child: Center(child: Text("Home"))),
              Container(child: Center(child: Text("Chart"))),
              Container(child: Center(child: Text("Scan"))),
              RouterOutlet(module: AddModule()),
              RouterOutlet(module: ProfileModule()),
            ],
          );
        },
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: controller.pageController,
        builder: (context, index) {
          return CustomBottomNavigationBar(
            items: [
              CustomBottomBarItem(
                icon: MdiIcons.homeOutline,
                active: controller.pageController.page == 0,
                currentIndex: controller.pageController.page,
                onTap: () {
                  controller.pageController.animateToPage(
                    0,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              CustomBottomBarItem(
                icon: MdiIcons.equalizer,
                active: controller.pageController.page == 1,
                currentIndex: controller.pageController.page,
                onTap: () {
                  controller.pageController.animateToPage(
                    1,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              CustomBottomBarItem(
                icon: MdiIcons.cubeScan,
                active: controller.pageController.page == 2,
                size: 35,
                mainItem: true,
                currentIndex: controller.pageController.page,
                onTap: () {
                  controller.pageController.animateToPage(
                    2,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              CustomBottomBarItem(
                icon: MdiIcons.plusBoxMultipleOutline,
                active: controller.pageController.page == 3,
                currentIndex: controller.pageController.page,
                onTap: () {
                  controller.pageController.animateToPage(
                    3,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              CustomBottomBarItem(
                icon: MdiIcons.accountOutline,
                active: controller.pageController.page == 4,
                currentIndex: controller.pageController.page,
                onTap: () {
                  print(controller.pageController.page);
                  controller.pageController.animateToPage(
                    4,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
