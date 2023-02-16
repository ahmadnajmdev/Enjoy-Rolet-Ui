// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:enjoy_rolet/pages/signup.dart';
import 'package:enjoy_rolet/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import 'login.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('images/welcome.jpg'),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to Rolet',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Transfer, Request, Add, Make Payments with Rolet',
                    style: TextStyle(
                      fontSize: 20,
                      color: textGreyClr,
                    ),
                  ),
                  SizedBox(height: 50),
                  GestureDetector(
                    onTap: () {
                      Get.to(LoginPage());
                    },
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            color: BlueClr,
                          ),
                          child: Center(
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 23,
                                color: WhiteClr,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Get.to(SignUp());
                    },
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(),
                          ),
                          child: Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 23,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
