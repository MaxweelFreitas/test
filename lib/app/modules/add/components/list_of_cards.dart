import 'package:flutter/material.dart';
import 'package:test_hubo/app/modules/add/components/item_pageview_model.dart';

class ListOfCards extends StatefulWidget {
  @override
  _ListOfCardsState createState() => _ListOfCardsState();
}

class _ListOfCardsState extends State<ListOfCards> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> lista = [
      {
        "imgUrl":
            "https://merriam-webster.com/assets/mw/images/article/art-wap-landing-mp-lg/family-of-four-7101-a234e9249b2c7223d4e4d8cd9432f9e9@1x.jpg",
        "title": "Enquete",
      },
      {
        "imgUrl":
            "https://merriam-webster.com/assets/mw/images/article/art-wap-landing-mp-lg/family-of-four-7101-a234e9249b2c7223d4e4d8cd9432f9e9@1x.jpg",
        "title": "Link\nExterno",
      },
      {
        "imgUrl":
            "https://merriam-webster.com/assets/mw/images/article/art-wap-landing-mp-lg/family-of-four-7101-a234e9249b2c7223d4e4d8cd9432f9e9@1x.jpg",
        "title": "Quiz",
      },
      {
        "imgUrl":
            "https://merriam-webster.com/assets/mw/images/article/art-wap-landing-mp-lg/family-of-four-7101-a234e9249b2c7223d4e4d8cd9432f9e9@1x.jpg",
        "title": "Fotos",
      },
    ];
    return Container(
      height: 400,
      child: Column(
        children: [
          Text(
            "Selecione um modelo",
            style: TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.bold,
              color: Color(0xffA9A9A9),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 400,
            width: 500,
            child: PageView.builder(
              itemCount: lista.length,
              controller: PageController(viewportFraction: 0.7),
              onPageChanged: (value) {
                setState(() {
                  page = value;
                });
              },
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (index != page.round()) {}
                return ItemPageviewModel(
                  index: index,
                  page: page,
                  imgUrl: lista[index]["imgUrl"],
                  title: lista[index]["title"],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
