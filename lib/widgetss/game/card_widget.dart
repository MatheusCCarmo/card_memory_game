import 'package:card_memory_game/models/card_model.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final CardModel cardModel;

  CardWidget({Key? key, required this.cardModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // cardModel.isTurned = true;
        print('vira carta');
      },
      child: AnimatedContainer(
        duration: Duration(seconds: 4),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
        ),
        child: GridTile(
          child: Center(
            child: Text('teste'),
          ),
        ),
      ),
    );
  }
}
