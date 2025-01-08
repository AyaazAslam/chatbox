import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/clippers/myclipper.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Colors.green,
        child: Center(
          child: ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: height * 0.5,
              width: width * 0.5,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
