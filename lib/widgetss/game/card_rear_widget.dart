import 'package:flutter/material.dart';

class CardRearWidget extends StatelessWidget {
  const CardRearWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(4, 4),
            blurRadius: 4,
            spreadRadius: 2,
          )
        ],
      ),
    );
  }
}
