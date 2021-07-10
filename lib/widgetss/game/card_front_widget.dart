import 'package:flutter/material.dart';

class CardFrontWidget extends StatelessWidget {
  final IconData icon;
  const CardFrontWidget({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
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
      child: Center(
        child: Icon(
          icon,
          size: 60,
        ),
      ),
    );
  }
}
