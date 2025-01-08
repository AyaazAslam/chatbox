import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/sign_up_screen.dart';
import 'package:flutter_application_1/components/click_button.dart';
import 'package:flutter_application_1/components/textform_field.dart';
import 'package:flutter_application_1/screens/bootom_navigation.dart';

class SignUpEmailScreen extends StatelessWidget {
  const SignUpEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 32,
              )),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Text(
            "Sign up with Email",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 27),
          ),
          SizedBox(
            height: 17,
          ),
          Text(
            textAlign: TextAlign.center,
            "Get chatting with friends and family today by \nsigning up for our chat app!",
            style: TextStyle(color: Colors.black.withOpacity(0.5)),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34.0),
            child: TextFormWidge(
              inputText: "Your name",
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34.0),
            child: TextFormWidge(
              inputText: "Your email",
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34.0),
            child: TextFormWidge(
              inputText: "Your password",
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34.0),
            child: TextFormWidge(
              inputText: "confirm password",
            ),
          ),
          SizedBox(
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: InkWell(
              onTap: () {},
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavigationScreen()));
                },
                child: CLickButton(
                  text: "Create an acount",
                  color: Colors.greenAccent.withOpacity(0.2),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
