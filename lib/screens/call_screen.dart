import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/painters/my_painter.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Colors.purple,
        child: Center(
          child: Container(
            height: height * 0.5,
            width: width * 0.5,
            color: Colors.blue,
            child: CustomPaint(painter: MyPainter()),
          ),
        ),
      ),
    );
  }
}
