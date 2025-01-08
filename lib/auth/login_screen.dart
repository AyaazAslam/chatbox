import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/sign_up_email.dart';
import 'package:flutter_application_1/auth/sign_up_screen.dart';
import 'package:flutter_application_1/components/click_button.dart';
import 'package:flutter_application_1/components/socail_icon.dart';
import 'package:flutter_application_1/components/textform_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            height: 100,
          ),
          Text(
            "Log in to ChatBox",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 27),
          ),
          SizedBox(
            height: 17,
          ),
          Text(
            textAlign: TextAlign.center,
            "Welcome back! Sign in using your social \naccount or email to continue us",
            style: TextStyle(color: Colors.black.withOpacity(0.5)),
          ),
          SizedBox(
            height: 27,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocailIconScreen(
                  color: Colors.black, ImageUrl: "assets/images/face.jpg"),
              SizedBox(
                width: 10,
              ),
              SocailIconScreen(
                color: Colors.black,
                ImageUrl: "assets/images/gds.jpg",
              ),
              SizedBox(
                width: 10,
              ),
              SocailIconScreen(
                  color: Colors.black, ImageUrl: "assets/images/apple.jpg"),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 1,
                  width: 170,
                  color: Colors.black.withOpacity(0.1),
                ),
                Text(
                  "OR",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                Container(
                  height: 1,
                  width: 170,
                  color: Colors.black.withOpacity(0.1),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34.0),
            child: TextFormWidge(
              inputText: "Your email",
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34.0),
            child: TextFormWidge(
              inputText: "Password",
            ),
          ),
          SizedBox(
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SignUpEmailScreen()));
              },
              child: CLickButton(
                text: "Log in",
                color: Colors.greenAccent.withOpacity(0.2),
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Forgot password?",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
