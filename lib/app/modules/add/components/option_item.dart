import 'package:flutter/material.dart';

class OptionItem extends StatelessWidget {
  final int selected;
  final int index;
  final List<String> list;

  const OptionItem({
    Key key,
    this.selected,
    this.list,
    this.index,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 25,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: selected == index ? Color(0xff5A5CB7) : Colors.transparent,
            width: 3,
          ),
        ),
      ),
      child: Text(
        list[index].toUpperCase(),
        style: TextStyle(
          color: selected == index ? Color(0xff5A5CB7) : Color(0xffCCCCCC),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
