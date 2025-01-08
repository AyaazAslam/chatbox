import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/call_screen.dart';
import 'package:flutter_application_1/screens/chat_screen.dart';
import 'package:flutter_application_1/screens/main_home_screen.dart';
import 'package:flutter_application_1/screens/setting_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentIndex = 0;
  PageController controller = PageController();

  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(title: const Text('Bottom Navigation Example')),
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: height,
                width: width,
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  //  scrollDirection: Axis.vertical,
                  controller: controller,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                    print(value);
                  },
                  children: const [
                    MainHomeScreen(),
                    ChatScreen(),
                    CallScreen(),
                    SettingScreens()
                  ],
                ),
              ),
            ),
            Container(
              height: height * 0.07,
              width: width,
              decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      controller.jumpToPage(0);
                    },
                    child: SizedBox(
                      height: height,
                      width: width * 0.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat,
                            color:
                                currentIndex == 0 ? Colors.blue : Colors.black,
                          ),
                          Text(
                            "Chat",
                            style: TextStyle(
                              color: currentIndex == 0
                                  ? Colors.blue
                                  : Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.jumpToPage(1);
                    },
                    child: SizedBox(
                      height: height,
                      width: width * 0.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.call_sharp,
                            color:
                                currentIndex == 1 ? Colors.blue : Colors.black,
                          ),
                          Text(
                            "Calls",
                            style: TextStyle(
                              color: currentIndex == 1
                                  ? Colors.blue
                                  : Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.jumpToPage(2);
                    },
                    child: SizedBox(
                      height: height,
                      width: width * 0.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.contacts,
                            color:
                                currentIndex == 2 ? Colors.blue : Colors.black,
                          ),
                          Text(
                            "Contacts",
                            style: TextStyle(
                              color: currentIndex == 2
                                  ? Colors.blue
                                  : Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.jumpToPage(3);
                    },
                    child: SizedBox(
                      height: height,
                      width: width * 0.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.settings,
                              color: currentIndex == 3
                                  ? Colors.blue
                                  : Colors.black),
                          Text(
                            "Settings",
                            style: TextStyle(
                              color: currentIndex == 3
                                  ? Colors.blue
                                  : Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
