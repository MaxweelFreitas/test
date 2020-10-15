import 'package:flutter/material.dart';
import 'package:test_hubo/app/core/utils/helpers.dart';

class ItemPageviewModel extends StatelessWidget {
  final int index;
  final int page;
  final String imgUrl;
  final String title;

  const ItemPageviewModel({
    Key key,
    this.index = 0,
    this.page = 0,
    this.imgUrl,
    this.title = "default",
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Transform.scale(
          scale: index != page ? 1 : 1.2,
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 320,
              width: 300,
              // color: Colors.white,
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                elevation: 4,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ClipPath(
                          clipper: ClipImg(),
                          child: showImage(
                            imgUrl,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Center(
                        child: Text(
                          title.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff5A5CB7),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ClipImg extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathTela = Path()
      ..moveTo(size.width * 0, size.height * 0)
      ..lineTo(size.width * 0, size.height * 0.93)
      ..quadraticBezierTo(size.width * 0.23, size.height * 1, size.width * 0.57,
          size.height * 0.91)
      ..quadraticBezierTo(size.width * 0.79, size.height * 0.85, size.width * 1,
          size.height * 0.93)
      ..lineTo(size.width * 1, size.height * 0);
    pathTela.close();
    return pathTela;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
