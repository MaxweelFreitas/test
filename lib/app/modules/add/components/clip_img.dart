import 'package:flutter/material.dart';

class ClipImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ClipImg extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathTela = Path()
      ..moveTo(size.width * 0, size.height * 0)
      ..lineTo(size.width * 0, size.height * 0.73)
      ..quadraticBezierTo(size.width * 0.23, size.height * 0.8,
          size.width * 0.57, size.height * 0.71)
      ..quadraticBezierTo(size.width * 0.79, size.height * 0.65, size.width * 1,
          size.height * 0.73)
      ..lineTo(size.width * 1, size.height * 0);
    pathTela.close();
    return pathTela;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
