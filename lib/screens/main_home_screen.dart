import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/list_chat.dart';
import 'package:flutter_application_1/components/user_status.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      border: Border.all(color: Colors.white),
                      shape: BoxShape.circle),
                  child: Container(
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: Image.asset("assets/images/5.jpg").image,
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 15),
              children: [ 
                Stack(
                  children: [
                    StatusSection(
                        userImagePath: "1.jpg", userName: "My Status"),
                    Positioned(
                        top: 40,
                        right: 4,
                        child: Container(
                          height: 22,
                          width: 24,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                        ))
                  ],
                ),
                StatusSection(userImagePath: "2.jpg", userName: "Ayaz Aslam"),
                StatusSection(userImagePath: "3.jpg", userName: "Amaan Ullah"),
                StatusSection(userImagePath: "4.jpg", userName: "Samar"),
                StatusSection(userImagePath: "5.jpg", userName: "Hamaza"),
                StatusSection(userImagePath: "6.jpg", userName: "Kashif "),
                StatusSection(userImagePath: "4.jpg", userName: "Samar"),
                StatusSection(userImagePath: "4.jpg", userName: "Samar"),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 2,
                      width: 50,
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: const [
                        ListChatScreen(
                            userChatImage: "assets/images/4.jpg",
                            title: "Ayaz",
                            messages: "where are you!!",
                            time: "2 min ago",
                            messageCount: "2"),
                        ListChatScreen(
                            userChatImage: "assets/images/3.jpg",
                            title: "Wasay Hashmi",
                            messages: "where are you!!",
                            time: "2 min ago",
                            messageCount: ""),
                        ListChatScreen(
                            userChatImage: "assets/images/5.jpg",
                            title: "Waqas Khan",
                            messages: "where are you!!",
                            time: "2 min ago",
                            messageCount: ""),
                        ListChatScreen(
                            userChatImage: "assets/images/4.jpg",
                            title: "kashif",
                            messages: "Everthing is ok?",
                            time: "2 min ago",
                            messageCount: ""),
                        ListChatScreen(
                            userChatImage: "assets/images/6.jpg",
                            title: "Wakeel Ahmad",
                            messages: "let me check",
                            time: "2 min ago",
                            messageCount: "2"),
                        ListChatScreen(
                            userChatImage: "assets/images/2.jpg",
                            title: "Samar Arshad",
                            messages: "yes",
                            time: "2 min ago",
                            messageCount: "2"),
                        ListChatScreen(
                            userChatImage: "assets/images/3.jpg",
                            title: "Ahmad Hassan",
                            messages: "ok",
                            time: "2 min ago",
                            messageCount: "2"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
