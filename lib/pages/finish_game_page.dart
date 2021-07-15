import 'package:card_memory_game/controllers/game_controller.dart';
import 'package:card_memory_game/widgetss/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FinishGamePage extends StatelessWidget {
  const FinishGamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<GameController>(context);

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Você Venceu!',
              style: Theme.of(context).textTheme.headline1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  title: 'Recomeçar',
                  onTap: () {
                    controller.start();
                    Navigator.of(context)
                        .pushReplacementNamed('/game_cards_page');
                  },
                ),
                CustomButton(
                  title: 'Menu Principal',
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed('/start_game_page');
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
