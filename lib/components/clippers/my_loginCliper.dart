import 'package:flutter/cupertino.dart';

class MyLoginCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    Path path = Path();
    // // path.moveTo(height * 0.5, 0);
    // path.moveTo(0, height * 0.5);
    // path.lineTo(width, height * 0.5);
    // path.lineTo(width * 0.2, height);
    // // path.quadraticBezierTo(width * 0.5, height * 0.8, width * 0.8, height);
    // // path.lineTo(width, height * 0.5);
    // path.lineTo(0, height * 0.5);

    // // Create a curved line at the bottom
    // path.quadraticBezierTo(width * 0.1, height, width, height);

    // path.lineTo(width, 0);
    // path.moveTo(width * 0.5, 0);
    // path.lineTo(0, height * 0.5);
    // path.lineTo(0, height * 0.7);
    // path.quadraticBezierTo(width * 0.5, height * 0.8, width * 0.8, height);
    // path.lineTo(width, height * 0.5);
    path.lineTo(width * 0.8, height);
    path.lineTo(0, height);
    // path.lineTo(width, height);
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
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
