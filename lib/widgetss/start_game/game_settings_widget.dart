import 'package:card_memory_game/controllers/game_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class GameSettingsWidget extends StatelessWidget {
  const GameSettingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<GameController>(context);

    return Observer(
      builder: (context) {
        return Container(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DropdownButton(
                isExpanded: true,
                hint: Text('Tema'),
                value: controller.theme,
                onChanged: (value) {
                  controller.setTheme(value as GameThemes);
                },
                items: [
                  DropdownMenuItem(
                    value: GameThemes.sports,
                    child: Text('Esportes'),
                  ),
                  DropdownMenuItem(
                    value: GameThemes.transport,
                    child: Text('Transporte'),
                  ),
                ],
              ),
              DropdownButton(
                isExpanded: true,
                hint: Text('Quantidade de Cartas'),
                value: controller.cardsQuantity,
                onChanged: (value) {
                  controller.setCardsQuantity(value as int);
                },
                items: [
                  DropdownMenuItem(
                    value: 10,
                    child: Text('10'),
                  ),
                  DropdownMenuItem(
                    value: 20,
                    child: Text('20'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
