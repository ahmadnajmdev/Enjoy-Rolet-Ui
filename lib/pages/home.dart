// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:enjoy_rolet/theme/colors.dart';
import 'package:enjoy_rolet/widgets/Functions.dart';
import 'package:enjoy_rolet/widgets/TRANSACTIONS.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: WhiteClr,
        destinations: [
          Icon(Icons.home_outlined),
          Icon(Icons.payment),
          CircleAvatar(
              backgroundColor: BlueClr,
              child: Icon(
                Icons.qr_code_scanner,
                color: WhiteClr,
              )),
          Icon(Icons.data_usage_sharp),
          Icon(Icons.format_list_numbered_sharp),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(
                        'https://scontent.febl5-2.fna.fbcdn.net/v/t39.30808-6/323266025_3322670887948056_2580395756404369506_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeE__I9DDVEZLyOZY7ZokqqCiKf0zIG9Q4GIp_TMgb1DgUjNjjtr87v19W7wm3c0AMM58imqFYpf7wtbOk-rCAM8&_nc_ohc=ygNcFdKhmF8AX9SBCFu&_nc_ht=scontent.febl5-2.fna&oh=00_AfAZk3lpf9QZJ4hkYchMn7ddVJs-Q7xOKlQEb8MF3vyBYw&oe=63F40F7E'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome.',
                        style: TextStyle(color: textGreyClr),
                      ),
                      SizedBox(height: 5),
                      Text('Ahmad Najm'),
                    ],
                  ),
                  SizedBox(width: 170),
                  CircleAvatar(
                    backgroundColor: greyClr,
                    child: Icon(Icons.notifications),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Center(
                child: Container(
                  padding: EdgeInsets.all(18),
                  height: 170,
                  width: 350,
                  decoration: BoxDecoration(
                    color: lightYellowClr,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TODAY SPENDINGS',
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '\$  256,037.00',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                              color: WhiteClr,
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Text(
                              'Balance',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Functions(
                    name: 'Pay',
                    icon: Icon(
                      Icons.arrow_circle_up,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 20),
                  Functions(
                    name: 'Add',
                    icon: Icon(
                      Icons.arrow_circle_down,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 20),
                  Functions(
                    name: 'Split',
                    icon: Icon(
                      Icons.splitscreen_rounded,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 20),
                  Functions(
                    name: 'Request',
                    icon: Icon(
                      Icons.request_page_outlined,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text('TRANSACTIONS'),
              SizedBox(height: 10),
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TRANSACTIONS(
                          icon: Icon(Icons.fastfood_sharp),
                          name: 'Resturant',
                          date: '12 Aug 2022',
                          money: '-\$320',
                        ),
                        SizedBox(height: 20),
                        TRANSACTIONS(
                          icon: Icon(Icons.person_2_outlined),
                          name: 'Mark',
                          date: '7 Jul 2022',
                          money: '-\$199',
                        ),
                        SizedBox(height: 20),
                        TRANSACTIONS(
                          icon: Icon(Icons.fastfood_sharp),
                          name: 'YouTube',
                          date: '12 Aug 2022',
                          money: '-\$320',
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
