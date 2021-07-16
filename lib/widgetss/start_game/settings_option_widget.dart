import 'package:flutter/material.dart';

class SettingsOptionWidget extends StatelessWidget {
  final content;
  final onTap;

  const SettingsOptionWidget({
    Key? key,
    required this.content,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: false ? Colors.amber : Colors.blue,
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
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: content,
      ),
    );
  }
}
