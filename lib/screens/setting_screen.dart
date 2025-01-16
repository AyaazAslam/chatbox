import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/click_button.dart';
import 'package:flutter_application_1/components/clippers/my_loginCliper.dart';

import '../components/textform_field.dart';

class SettingScreens extends StatefulWidget {
  const SettingScreens({super.key});

  @override
  State<SettingScreens> createState() => _SettingScreensState();
}

class _SettingScreensState extends State<SettingScreens> {
  bool? ischeck = true;
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(
                width: 150,
              ),
              Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              )
            ],
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipPath(
                clipper: MyLoginCliper(),
                child: Container(
                  margin: EdgeInsets.all(30),
                  height: height * 0.5,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        TextFormWfield(
                          icon: Icons.mail,
                          inputText: 'EMAIL/PASSWORD',
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextFormWfield(
                          icon: Icons.lock,
                          inputText: 'PASSWORD',
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                // tristate: true,
                                value: ischeck,
                                onChanged: (bool? value) {
                                  setState(() {
                                    ischeck = value;
                                  });
                                }),
                            const Text("Remeber Me")
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: height * 0.1,
                            width: width * 0.1,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: const Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 430,
                  child: Padding(
                    padding: const EdgeInsets.all(23.0),
                    child: ClipPath(
                      clipper: signUpCliper(),
                      child: Container(
                        height: height * 0.3,
                        padding: EdgeInsets.symmetric(horizontal: 45),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have and acount?",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: width * 0.7,
                              child: CLickButton(
                                  text: "Sign UP",
                                  color: Colors.blue,
                                  onPressed: () {}),
                            )
                          ],
                        ),
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
