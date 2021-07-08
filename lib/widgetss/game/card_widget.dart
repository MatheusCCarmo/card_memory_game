import 'package:card_memory_game/controllers/game_controller.dart';
import 'package:card_memory_game/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class CardWidget extends StatelessWidget {
  final CardModel card;

  const CardWidget({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<GameController>(context);

    return Observer(
      builder: (context) {
        return GestureDetector(
          onTap: () {
            // controller.flipCard(card);
            card.setIsFlipped(true);
            controller.checkCards(card);
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            decoration: BoxDecoration(
                color: card.isFlipped ? Colors.amber : Colors.blue,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(4, 4),
                    blurRadius: 4,
                    spreadRadius: 2,
                  )
                ]),
            child: GridTile(
              child: Center(
                child: Column(
                  children: [
                    Text(card.isFlipped.toString()),
                    Icon(card.icon),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
