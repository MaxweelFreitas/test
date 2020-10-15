import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_hubo/app/modules/profile/Pages/ask/ask_page.dart';
import 'package:test_hubo/app/modules/profile/Pages/personal/personal_page.dart';
import 'package:test_hubo/app/modules/profile/Pages/signup/signup_page.dart';
import 'profile_controller.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key key, this.title = "Profile"}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ModularState<ProfilePage, ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: controller.avaluatePageController,
              children: [
                PersonalPage(),
                AskPage(),
                SignupPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
