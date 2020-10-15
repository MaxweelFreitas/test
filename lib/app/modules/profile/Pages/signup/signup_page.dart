import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:test_hubo/app/core/components/custom_button.dart';
import 'package:test_hubo/app/core/components/privacity_badge.dart';
import 'package:test_hubo/app/core/utils/helpers.dart';
import 'signup_controller.dart';

class SignupPage extends StatefulWidget {
  final String title;
  const SignupPage({Key key, this.title = "Signup"}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends ModularState<SignupPage, SignupController> {
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
                  ],
                ),
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: size.width * .75,
                height: size.height * .75,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: showImage(
                              "https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_1280.jpg",
                              height: 150,
                              boxFit: BoxFit.fitWidth),
                        ),
                        //Buttons

                        SizedBox(height: 40),
                        Text(
                          "Curso de Flutter",
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 32),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 16,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      "Aprenda o básico em Flutter e Dart e comece a fazer sites, programas e ",
                                ),
                                TextSpan(
                                  text:
                                      "aplicativos com android e ios com o mesmo código, ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: "desde o início  até ao fim.",
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 32),
                          child: Text(
                            "crie qualquer tipo de apps comerciais e de entretenimento para suas empresas ou clientes.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        CustomButton(
                          text: "Inscreva-se aqui".toUpperCase(),
                          backgroundColor: Color(0xffFFD625),
                          marginSymetricHorizontal: 32,
                          borderRadius: BorderRadius.circular(50),
                          fontSize: 18,
                          fontColor: Colors.white,
                        ),
                      ],
                    ),
                    // Buttons
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              MdiIcons.equalizer,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              MdiIcons.dotsVertical,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    // F-Logo
                    Positioned(
                        top: 120,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Color(0xffCCCCCC)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: showImage(
                              "https://strattonapps.com/wp-content/uploads/2020/02/flutter-logo-5086DD11C5-seeklogo.com_.png",
                              boxFit: BoxFit.contain),
                        ))
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
