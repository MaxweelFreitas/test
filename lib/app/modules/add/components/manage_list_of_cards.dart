import 'package:flutter/material.dart';

import 'manage_card_item.dart';

class ManageListOfCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map> ativos = [
      {
        "title": "Card de Pergunta",
        "imgUrl":
            "https://winaero.com/blog/wp-content/uploads/2019/11/Photos-new-icon.png",
      },
      {
        "title": "Link de Vendas",
        "imgUrl":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Google_Keep_icon.svg/1024px-Google_Keep_icon.svg.png",
      },
      {
        "title": "Enquete de Preferência",
        "imgUrl":
            "https://upload.wikimedia.org/wikipedia/commons/5/58/Instagram-Icon.png",
      },
    ];
    List<Map> inativos = [
      {
        "title": "Card de Pergunta",
        "imgUrl":
            "https://winaero.com/blog/wp-content/uploads/2019/11/Photos-new-icon.png",
      },
      {
        "title": "Link de Vendas",
        "imgUrl":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Google_Keep_icon.svg/1024px-Google_Keep_icon.svg.png",
      },
      {
        "title": "Enquete de Preferência",
        "imgUrl":
            "https://upload.wikimedia.org/wikipedia/commons/5/58/Instagram-Icon.png",
      },
      {
        "title": "Card de Pergunta",
        "imgUrl":
            "https://winaero.com/blog/wp-content/uploads/2019/11/Photos-new-icon.png",
      },
      {
        "title": "Link de Vendas",
        "imgUrl":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Google_Keep_icon.svg/1024px-Google_Keep_icon.svg.png",
      },
      {
        "title": "Enquete de Preferência",
        "imgUrl":
            "https://upload.wikimedia.org/wikipedia/commons/5/58/Instagram-Icon.png",
      },
      {
        "title": "Enquete de Preferência",
        "imgUrl":
            "https://upload.wikimedia.org/wikipedia/commons/5/58/Instagram-Icon.png",
      },
    ];
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Theme(
              data: ThemeData(dividerColor: Colors.transparent),
              child: ExpansionTile(
                initiallyExpanded: true,
                childrenPadding: EdgeInsets.zero,
                title: Text(
                  "Ativos (" + ativos.length.toString() + ")",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
                children: [
                  ListView.builder(
                    itemCount: ativos.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return ManageCardItem(
                        title: ativos[index]["title"],
                        imgUrl: ativos[index]["imgUrl"],
                      );
                    },
                  ),
                ],
              ),
            ),
            Theme(
              data: ThemeData(dividerColor: Colors.transparent),
              child: ExpansionTile(
                childrenPadding: EdgeInsets.zero,
                title: Text(
                  "Inativos (" + inativos.length.toString() + ")",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
                children: [
                  ListView.builder(
                    itemCount: inativos.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return ManageCardItem(
                        title: inativos[index]["title"],
                        imgUrl: inativos[index]["imgUrl"],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
