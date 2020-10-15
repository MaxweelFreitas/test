import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:test_hubo/app/core/components/custom_button.dart';
import 'package:test_hubo/app/core/components/privacity_badge.dart';
import 'package:test_hubo/app/core/components/social_button.dart';
import 'package:test_hubo/app/core/utils/helpers.dart';
import 'personal_controller.dart';

class PersonalPage extends StatefulWidget {
  final String title;
  const PersonalPage({Key key, this.title = "Personal"}) : super(key: key);

  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState
    extends ModularState<PersonalPage, PersonalController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              child: Center(child: PrivacityBadge(title: "Público")),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 0,
                        offset: Offset(0, 1), // changes position of shadow
                      )
                    ]),
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: size.width * .75,
                height: size.height * .75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 48),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                              MdiIcons.equalizer,
                              color: Colors.grey[600],
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              MdiIcons.cogOutline,
                              color: Colors.grey[600],
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    showImage(
                      "https://cdn2.iconfinder.com/data/icons/beautiful-and-sexy-women-avatar-with-different-hai/283/female-full-10-512.png",
                      height: 110,
                      width: 110,
                      borderRadius: 200,
                    ),
                    SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                            color: Color(0xffFFB546),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(text: "Carla Akemi "),
                            TextSpan(
                              text: "(você!)",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Programador Front-end - Curitiba",
                      style: TextStyle(fontSize: 16),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      width: MediaQuery.of(context).size.width * .52,
                      child: Divider(
                        color: Color(0xffCCCCCC),
                      ),
                    ),
                    Text(
                      "Olá! Sou a Carla, carioca,\nprogramadora front-ende fissurada\nem inivação, café e jogos\nde tabuleiro. :) Vamos criar juntos\numa nova solução para\na sua empresa?",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 15,
                        height: 1.3,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5),
                    CustomButton(
                      text: "Conheça meu trabalho".toUpperCase(),
                      fontColor: Colors.grey[600],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffCCCCCC)),
                      marginSymetricHorizontal: 48,
                    ),
                    SizedBox(height: 10),
                    //Social
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialButton(
                          icon: Icon(
                            MdiIcons.github,
                            color: Colors.white,
                          ),
                          diameter: 40,
                          backgroundColor: Color(0xffA9A9A9),
                          onTap: () {},
                        ),
                        SizedBox(width: 10),
                        SocialButton(
                          icon: Icon(
                            MdiIcons.linkedin,
                            color: Colors.white,
                          ),
                          diameter: 40,
                          backgroundColor: Color(0xffA9A9A9),
                          onTap: () {},
                        ),
                        SizedBox(width: 10),
                        SocialButton(
                          icon: Icon(
                            MdiIcons.googlePlus,
                            color: Colors.white,
                          ),
                          diameter: 40,
                          backgroundColor: Color(0xffA9A9A9),
                          onTap: () {},
                        ),
                        SizedBox(width: 10),
                        SocialButton(
                          icon: Icon(
                            MdiIcons.whatsapp,
                            color: Colors.white,
                          ),
                          diameter: 40,
                          backgroundColor: Color(0xffA9A9A9),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
