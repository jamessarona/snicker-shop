import 'package:flutter/material.dart';

class HeaderContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height / 2.5);
    path.quadraticBezierTo(
        size.width / 4, size.height / 1, size.width / 2.3, size.height / 1.3);
    path.quadraticBezierTo(
        size.width / 1.3, size.height / 3, size.width / 1, size.height / 1.3);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
