import 'package:flutter/material.dart';

class ListChatScreen extends StatelessWidget {
  final String userChatImage;
  final String title;
  final String messages;
  final String time;
  final String messageCount;

  const ListChatScreen({
    Key? key,
    required this.userChatImage,
    required this.title,
    required this.messages,
    required this.time,
    this.messageCount = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(userChatImage),
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(messages),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          if (messageCount.isNotEmpty)
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.red,
              child: Text(
                messageCount,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }
}
