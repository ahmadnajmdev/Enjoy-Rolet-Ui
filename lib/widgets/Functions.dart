// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:enjoy_rolet/theme/colors.dart';
import 'package:flutter/material.dart';

class Functions extends StatelessWidget {
  final icon;
  final String name;

  const Functions({
    super.key,
    this.icon,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: greyClr,
          child: icon,
        ),
        SizedBox(height: 10),
        Text(name)
      ],
    );
  }
}
