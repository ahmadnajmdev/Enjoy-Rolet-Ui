import 'package:enjoy_rolet/theme/colors.dart';
import 'package:flutter/material.dart';

class TodaysSpending extends StatelessWidget {
  final String text;
  final String todaysSpending;
  final String buttonText;
  const TodaysSpending({
    super.key,
    required this.text,
    required this.todaysSpending,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 200,
      width: 400,
      decoration: BoxDecoration(
        color: YellowClr,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 10),
          Text(
            todaysSpending,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.normal,
            ),
          ),
          Spacer(),
          Container(
            height: 60,
            width: 400,
            decoration: BoxDecoration(
              color: WhiteClr,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
