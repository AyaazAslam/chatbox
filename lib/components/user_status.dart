import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/user_image.dart';

class StatusSection extends StatelessWidget {
  final String userImagePath;
  final String userName;
  const StatusSection(
      {super.key, required this.userImagePath, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          userprofileWidget(
            imagepath: userImagePath,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            userName,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
