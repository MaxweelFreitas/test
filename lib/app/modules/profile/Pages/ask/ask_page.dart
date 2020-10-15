import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:test_hubo/app/core/components/custom_button.dart';
import 'package:test_hubo/app/core/components/privacity_badge.dart';
import 'package:test_hubo/app/core/utils/helpers.dart';
import 'ask_controller.dart';

class AskPage extends StatefulWidget {
  final String title;
  const AskPage({Key key, this.title = "Ask"}) : super(key: key);

  @override
  _AskPageState createState() => _AskPageState();
}

class _AskPageState extends ModularState<AskPage, AskController> {
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
                    image: DecorationImage(
                      image: showImageProvider(
                          "https://cdn.pixabay.com/photo/2016/02/19/11/19/office-1209640__480.jpg"),
                      fit: BoxFit.fitHeight,
                    ),
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
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: size.width * .75,
                height: size.height * .75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                    SizedBox(height: 20),
                    Text(
                      "Pergunta".toUpperCase(),
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Como você avalia o meu trabalho?",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomButton(
                      text: "Muito Bom!",
                      borderRadius: BorderRadius.circular(50),
                      fontColor: Colors.grey[600],
                      backgroundColor: const Color(0xFFFFFFF).withOpacity(0.5),
                      border: Border.all(
                        color: Colors.grey[600],
                      ),
                    ),
                    CustomButton(
                      text: "Bom",
                      borderRadius: BorderRadius.circular(50),
                      fontColor: Colors.grey[600],
                      backgroundColor: const Color(0xFFFFFFF).withOpacity(0.5),
                      border: Border.all(
                        color: Colors.grey[600],
                      ),
                    ),
                    CustomButton(
                      text: "Razoável",
                      borderRadius: BorderRadius.circular(50),
                      fontColor: Colors.grey[600],
                      backgroundColor: const Color(0xFFFFFFF).withOpacity(0.5),
                      border: Border.all(
                        color: Colors.grey[600],
                      ),
                    ),
                    CustomButton(
                      text: "Terrível",
                      borderRadius: BorderRadius.circular(50),
                      fontColor: Colors.grey[600],
                      backgroundColor: const Color(0xFFFFFFF).withOpacity(0.5),
                      border: Border.all(
                        color: Colors.grey[600],
                      ),
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
