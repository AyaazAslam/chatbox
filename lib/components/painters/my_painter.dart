import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.yellow
      ..strokeWidth = 20.0;
      // ..color=Colors.yellow
    var paint1 = Paint()
      ..color = Colors.pink
      ..strokeWidth = 20.0;

    var height = size.height;
    var width = size.width;

    Path path = Path();
    path.moveTo(width * 0.5, 0);
    path.lineTo(0, height * 0.5);
    path.lineTo(width * 0.2, height);
    path.quadraticBezierTo(width * 0.5, height * 0.8, width * 0.8, height);
    path.lineTo(width, height * 0.5);
    path.close();
    canvas.drawPath(path, paint);

    Path path1 = Path();
    path1.moveTo(width * 0.5, height * 0.2);
    path1.lineTo(width * 0.2, height * 0.5);
    path1.lineTo(width * 0.3, height * 0.8);
    path1.quadraticBezierTo(
        width * 0.5, height * 0.6, width * 0.7, height * 0.8);
    path1.lineTo(width * 0.8, height * 0.5);
    path1.close();
    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
