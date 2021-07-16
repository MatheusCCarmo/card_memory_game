import 'package:card_memory_game/controllers/game_controller.dart';
import 'package:card_memory_game/widgetss/custom_button.dart';
import 'package:card_memory_game/widgetss/start_game/game_settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StartGamePage extends StatelessWidget {
  const StartGamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<GameController>(context);

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Bem vindo!',
                    style: Theme.of(context).textTheme.headline1,
                    children: [
                      TextSpan(
                        text: '\nSelecione o tema e a quantidade de cartas!',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              child: GameSettingsWidget(),
            ),
            Flexible(
              child: CustomButton(
                title: 'Começar',
                onTap: () {
                  controller.start();
                  Navigator.pushReplacementNamed(context, '/game_cards_page');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
