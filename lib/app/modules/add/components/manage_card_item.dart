import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:test_hubo/app/core/utils/helpers.dart';

class ManageCardItem extends StatelessWidget {
  final String title;
  final String imgUrl;

  const ManageCardItem({
    Key key,
    @required this.title,
    this.imgUrl,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  MdiIcons.drag,
                  color: Colors.grey[400],
                ),
                onPressed: () {},
              ),
              showImage(imgUrl, height: 50, width: 50, borderRadius: 10),
              // Container(
              //   height: 50,
              //   width: 50,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              // ),
              SizedBox(width: 15),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              MdiIcons.dotsVertical,
              color: Colors.grey[400],
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
