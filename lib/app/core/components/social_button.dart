import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final Widget icon;
  final double diameter;
  final Color backgroundColor;
  final Function onTap;

  const SocialButton({
    Key key,
    this.icon,
    this.diameter,
    this.backgroundColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: diameter,
      width: diameter,
      child: Material(
        color: backgroundColor,
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(diameter),
        child: InkWell(
          onTap: onTap,
          child: icon,
        ),
      ),
    );
  }
}
