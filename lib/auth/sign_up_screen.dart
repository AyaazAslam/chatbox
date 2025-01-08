import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/auth/login_screen.dart';
import 'package:flutter_application_1/components/socail_icon.dart';
import 'package:flutter_application_1/components/click_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomRight,
        colors: [Colors.black, Colors.deepPurple, Colors.black],
      )),
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: RichText(
                  text: const TextSpan(
                      text: "C",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 45),
                      children: [
                    TextSpan(
                        text: "ChatBox",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23))
                  ])),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: const Text(
                "Connect \nfriends",
                style: TextStyle(
                  fontSize: 57,
                  color: Colors.white,
                  letterSpacing: 4,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: const Text(
                "easy & \nquickly",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 6),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Our chat app is the perfect way to stay \nconnected with friends and family.",
                style: TextStyle(
                    fontSize: 23, color: Colors.white.withOpacity(0.7)),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocailIconScreen(
                    color: Colors.white, ImageUrl: "assets/images/face.jpg"),
                SizedBox(
                  width: 10,
                ),
                SocailIconScreen(
                  color: Colors.white,
                  ImageUrl: "assets/images/gds.jpg",
                ),
                SizedBox(
                  width: 10,
                ),
                SocailIconScreen(
                    color: Colors.white, ImageUrl: "assets/images/apple.jpg"),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 1,
                    width: 170,
                    color: Colors.white.withOpacity(0.4),
                  ),
                  Text(
                    "Or",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    height: 1,
                    width: 170,
                    color: Colors.white.withOpacity(0.4),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: CLickButton(
                  text: "Sign Up",
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Existing acount? ",
                  style: TextStyle(color: Colors.white.withOpacity(0.8)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
