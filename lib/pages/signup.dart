// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(20),
              width: 500,
              height: 400,
              decoration: BoxDecoration(color: lightYellowClr),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color.fromRGBO(0, 0, 0, 0.151),
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Transfer, Request, Add, Make Payments with Rolet',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(left: 16),
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          color: WhiteClr,
                          borderRadius: BorderRadius.circular(50)),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.person_2_outlined,
                            color: textGreyClr,
                          ),
                          hintText: 'Enter Name ',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(left: 16),
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          color: WhiteClr,
                          borderRadius: BorderRadius.circular(50)),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.tag,
                            color: textGreyClr,
                          ),
                          hintText: 'Enter Phone Number ',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'OR',
            style: TextStyle(color: textGreyClr, fontSize: 24),
          ),
          SizedBox(height: 20),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.only(left: 16),
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                color: greyClr,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: greyClr,
                    backgroundImage: NetworkImage(
                        'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Sign In With Google',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 16),
            height: 60,
            width: 300,
            decoration: BoxDecoration(
              color: greyClr,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: greyClr,
                  backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/600px-Facebook_Logo_%282019%29.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Sign In With Facebook',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
