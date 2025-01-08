import 'package:flutter/material.dart';

class userprofileWidget extends StatelessWidget {
  final String imagepath;
  const userprofileWidget({
    super.key,
    required this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 30,
        backgroundImage: Image.asset("assets/images/$imagepath").image,
      ),
    );
  }
}
