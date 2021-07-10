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

    // Tween<Widget> _flipTween = Tween<Widget>(begin: unflipped, end: flipped);

    return Observer(
      builder: (_) {
        return GestureDetector(
          onTap: () {
            controller.checkCards(card);
          },
          child: GridTile(
            child: Center(
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 200),
                child: card.isFlipped
                    ? CardFrontWidget(icon: card.icon)
                    : CardRearWidget(),
              ),
            ),
          ),
        );
      },
    );
  }
}
