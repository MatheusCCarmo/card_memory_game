import 'dart:math';

import 'package:card_memory_game/controllers/game_controller.dart';
import 'package:card_memory_game/models/card_model.dart';
import 'package:card_memory_game/widgetss/game/card_front_widget.dart';
import 'package:card_memory_game/widgetss/game/card_rear_widget.dart';
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
      builder: (_) {
        return GestureDetector(
          onTap: () {
            controller.checkCards(card);
          },
          child: GridTile(
            child: Center(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                child: card.isFlipped
                    ? Transform(
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(pi),
                        alignment: Alignment.center,
                        child: CardFrontWidget(icon: card.icon))
                    : Transform(
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(0),
                        alignment: Alignment.center,
                        child: CardRearWidget()),
              ),
            ),
          ),
        );
      },
    );
  }
}
