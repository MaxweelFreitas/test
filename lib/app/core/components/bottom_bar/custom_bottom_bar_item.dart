import 'package:flutter/material.dart';

class CustomBottomBarItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double currentIndex;
  final Function onTap;
  final double size;
  final bool mainItem;
  final bool active;

  const CustomBottomBarItem({
    Key key,
    this.currentIndex,
    this.onTap,
    this.size,
    this.icon,
    this.mainItem = false,
    this.iconColor,
    this.active = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: kBottomNavigationBarHeight,
        width: kBottomNavigationBarHeight,
        decoration: BoxDecoration(
          color: mainItem ? Color(0xff5A5CB7) : Colors.transparent,
          shape: BoxShape.circle,
        ),
        margin: mainItem ? EdgeInsets.zero : EdgeInsets.only(top: 20),
        child: Icon(
          icon,
          color: mainItem
              ? Colors.white
              : active
                  ? Color(0xff5A5CB7)
                  : Color(0xffCCCCCC),
          size: size,
        ),
      ),
    );
  }
}
