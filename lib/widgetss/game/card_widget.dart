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
      builder: (context) {
        return GestureDetector(
          onTap: () {
            controller.checkCards(card);
          },
          child: AnimatedSwitcher(
              switchInCurve: Curves.decelerate,
              switchOutCurve: Curves.easeIn,
              duration: Duration(milliseconds: 250),
              child: card.isFlipped
                  ? CardFrontWidget(icon: card.icon)
                  : CardRearWidget()
              // ? Transform(
              //     transform: Matrix4.identity()
              //       ..setEntry(3, 2, 0.001)
              //       ..rotateY(pi),
              //     alignment: Alignment.center,
              //     child: CardFrontWidget(icon: card.icon))
              // : Transform(
              //     transform: Matrix4.identity()
              //       ..setEntry(3, 2, 0.001)
              //       ..rotateY(0),
              //     alignment: Alignment.center,
              //     child: CardRearWidget()),
              ),
        );
      },
    );
  }
}
