import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PrivacityBadge extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final double padding;
  final String title;

  const PrivacityBadge({
    Key key,
    this.height = 30,
    this.width = 95,
    this.color = const Color(0xff5A5CB7),
    this.padding = 2.5,
    this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: padding),
            height: height - 5,
            width: height - 5,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              MdiIcons.earth,
              color: Colors.grey[600],
            ),
          )
        ],
      ),
    );
  }
}
