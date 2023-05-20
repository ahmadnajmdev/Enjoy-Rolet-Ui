// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:enjoy_rolet/theme/colors.dart';
import 'package:enjoy_rolet/widgets/Functions.dart';
import 'package:enjoy_rolet/widgets/TRANSACTIONS.dart';
import 'package:enjoy_rolet/widgets/todays_spending.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  var icons = [
    Icons.home,
    Icons.search,
    Icons.add,
    Icons.favorite,
    Icons.person,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                // pfp , welcome , notificationicon
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        'https://i.pinimg.com/736x/d6/e1/0a/d6e10a79f543530e51c36f3c421299df.jpg',
                      ),
                    ),
                    SizedBox(width: 20),
                    // welcome and name
                    Column(
                      children: [
                        Text(
                          'Welcome,',
                          style: TextStyle(
                            color: textGreyClr,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          'John Doe',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    // notification icon
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: greyClr,
                      child: Icon(Icons.notifications),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // todays spending
                TodaysSpending(
                  text: 'TODAYS SPEDIING',
                  todaysSpending: '\$ 256,037.00',
                  buttonText: 'BALANCE',
                ),
                SizedBox(height: 20),
                // functions
                Row(
                  children: [
                    Functions(
                      name: 'Pay',
                      icon: Icon(Icons.payment),
                    ),
                    Spacer(),
                    Functions(
                      name: 'Add',
                      icon: Icon(Icons.add),
                    ),
                    Spacer(),
                    Functions(
                      name: 'Spilt',
                      icon: Icon(Icons.discount),
                    ),
                    Spacer(),
                    Functions(
                      name: 'Request',
                      icon: Icon(Icons.attach_money),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // recent transactions
                Row(
                  children: [
                    Text(
                      'Recent Transactions',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: textGreyClr,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // recent transactions list
                TRANSACTIONS(
                  icon: Icon(Icons.restaurant),
                  name: 'Restaurant',
                  date: '12 Aug 2022',
                  money: '-\$320',
                ),
                SizedBox(height: 10),
                TRANSACTIONS(
                  icon: Icon(Icons.person),
                  name: 'Mark',
                  date: '12 Aug 2022',
                  money: '-\$320',
                ),
                SizedBox(height: 10),
                TRANSACTIONS(
                  icon: Icon(Icons.play_circle_outline_sharp),
                  name: 'Youtube',
                  date: '12 Aug 2022',
                  money: '-\$320',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
