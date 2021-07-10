import 'package:flutter/material.dart';

class CardFrontWidget extends StatelessWidget {
  final IconData icon;
  const CardFrontWidget({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: 60,
      ),
    );
  }
}
