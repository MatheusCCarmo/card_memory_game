import 'package:card_memory_game/controllers/game_controller.dart';
import 'package:card_memory_game/widgetss/game/card_widget.dart';
import 'package:flutter/material.dart';

class GameCards extends StatelessWidget {
  GameCards({Key? key}) : super(key: key);

  var gameController = GameController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: GridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.84,
        children:
            gameController.cards.map((e) => CardWidget(cardModel: e)).toList(),
      ),
    );
  }
}
