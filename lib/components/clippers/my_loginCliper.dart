import 'package:flutter/cupertino.dart';

class MyLoginCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    Path path = Path();
    path.moveTo(0, height * 0.2);
    path.lineTo(0, height * 0.6);
    path.lineTo(width * 0.9, height);
    path.lineTo(width, height * 0.85);
    path.lineTo(width, height * 0.1);
    path.lineTo(width * 0.9, 0);

    path.lineTo(width * 0.1, 0);
    path.lineTo(0, height * 0.1);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class signUpCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    Path path = Path();
    path.moveTo(width * 0.2, 0);
    path.lineTo(width, height * 0.8);
    

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
