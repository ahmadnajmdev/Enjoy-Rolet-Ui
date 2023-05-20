// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:flutter/material.dart';
import '../theme/colors.dart';

class TRANSACTIONS extends StatelessWidget {
  final icon;
  final String name;
  final String date;
  final String money;
  const TRANSACTIONS({
    Key? key,
    required this.name,
    required this.date,
    required this.money,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      height: 60,
      width: 400,
      decoration: BoxDecoration(
          color: WhiteClr,
          border: Border.all(),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: greyClr,
                child: icon,
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  SizedBox(height: 5),
                  Text(date),
                ],
              ),
              SizedBox(width: 150),
              Text(money),
            ],
          )
        ],
      ),
    );
  }
}
