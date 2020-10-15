import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final BorderRadius borderRadius;
  final double marginSymetricHorizontal;
  final Function onTap;
  final Border border;
  final Color backgroundColor;
  final Color fontColor;
  final double fontSize;

  const CustomButton({
    Key key,
    @required this.text,
    this.onTap,
    this.borderRadius,
    this.border,
    this.height = 50,
    this.width = double.infinity,
    this.marginSymetricHorizontal,
    this.backgroundColor = Colors.transparent,
    this.fontColor,
    this.fontSize,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal:
            marginSymetricHorizontal == null ? 0 : marginSymetricHorizontal,
        vertical: 10,
      ),
      height: height,
      width: width,
      decoration: BoxDecoration(borderRadius: borderRadius, border: border),
      child: Material(
        color: backgroundColor,
        borderRadius: borderRadius,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                color: fontColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
