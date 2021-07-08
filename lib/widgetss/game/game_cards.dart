import 'package:card_memory_game/controllers/game_controller.dart';
import 'package:card_memory_game/widgetss/game/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class GameCards extends StatelessWidget {
  GameCards({Key? key}) : super(key: key);

  final gameController = GameController();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        print('aqui');
        return Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.84,
              ),
              itemCount: gameController.cards.length,
              itemBuilder: (context, index) {
                var card = gameController.cards[index];
                return CardWidget(card: card);
              },
            ));
      },
    );
  }
}
