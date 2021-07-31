import 'package:card_memory_game/controllers/game_controller.dart';
import 'package:card_memory_game/widgetss/custom_button.dart';
import 'package:card_memory_game/widgetss/game/card_widget.dart';
import 'package:card_memory_game/widgetss/game/game_score.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class GameCardsPage extends StatelessWidget {
  GameCardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<GameController>(context);

    return Observer(
      builder: (context) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              color: Colors.blue[100],
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  GameScore(),
                  Expanded(
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.9,
                      ),
                      itemCount: controller.cards.length,
                      itemBuilder: (context, index) {
                        return CardWidget(
                          card: controller.cards[index],
                        );
                      },
                    ),
                  ),
                  Column(
                    children: [
                      if (controller.hasWon)
                        Text(
                          'Você Venceu!',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomButton(
                            title: 'Recomeçar',
                            onTap: () {
                              controller.start();
                            },
                          ),
                          if (controller.hasWon)
                            CustomButton(
                              onTap: () {
                                Navigator.of(context)
                                    .pushReplacementNamed('/start_game_page');
                              },
                              title: 'Menu Principal',
                            ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
