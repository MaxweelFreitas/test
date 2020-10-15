import 'package:flutter/material.dart';
import 'package:test_hubo/app/modules/home/home_controller.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function onTap;
  final HomeController hController;
  final List<Widget> items;

  const CustomBottomNavigationBar({
    Key key,
    this.currentIndex,
    this.onTap,
    this.hController,
    this.items,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CustomShadow(),
      child: ClipPath(
        clipper: BottomBarForm(),
        child: Container(
          color: Colors.white,
          height: kBottomNavigationBarHeight + kBottomNavigationBarHeight / 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: items,
          ),
        ),
      ),
    );
  }
}

class BottomBarForm extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathTela = Path()
      ..moveTo(size.width * 0, size.height * .26)
      ..lineTo(size.width * 0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height * .26)
      ..lineTo(size.width * .64, size.height * .26)
      ..quadraticBezierTo(
        size.width * 0.58,
        size.height * 0.23,
        size.width * 0.56,
        size.height * 0.14,
      )
      ..quadraticBezierTo(
        size.width * 0.54, //56 -> 53
        size.height * 0.03,
        size.width * 0.5, //50 -> 49
        size.height * 0,
      )
      ..quadraticBezierTo(
        size.width * 0.46, //43 -> 46
        size.height * 0,
        size.width * 0.43, //42 -> 43
        size.height * 0.14,
      )
      ..quadraticBezierTo(
        size.width * 0.42,
        size.height * 0.23,
        size.width * 0.36,
        size.height * 0.26,
      );
    pathTela.close();
    return pathTela;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class CustomShadow extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var pathTela = Path()
      ..moveTo(size.width * 0, size.height * .26)
      ..lineTo(size.width * 0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height * .26)
      ..lineTo(size.width * .64, size.height * .26)
      ..quadraticBezierTo(
        size.width * 0.58,
        size.height * 0.23,
        size.width * 0.56,
        size.height * 0.14,
      )
      ..quadraticBezierTo(
        size.width * 0.54, //56 -> 53
        size.height * 0.03,
        size.width * 0.5, //50 -> 49
        size.height * 0,
      )
      ..quadraticBezierTo(
        size.width * 0.46, //43 -> 46
        size.height * 0,
        size.width * 0.43, //42 -> 43
        size.height * 0.14,
      )
      ..quadraticBezierTo(
        size.width * 0.42,
        size.height * 0.23,
        size.width * 0.36,
        size.height * 0.26,
      );
    pathTela.close();

    canvas.drawShadow(pathTela, Colors.black, 8.0, false);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
