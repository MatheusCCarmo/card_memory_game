import 'package:card_memory_game/controllers/game_controller.dart';
import 'package:card_memory_game/widgetss/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class StartGamePage extends StatelessWidget {
  const StartGamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<GameController>(context);

    return Scaffold(
      body: Observer(
        builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
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
                      ]),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DropdownButton(
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
              // TextButton(
              //     onPressed: () => Navigator.pushReplacementNamed(
              //         context, '/game_cards_page'),
              //     child: Text('tes'))
              CustomButton(
                  title: 'Começar',
                  onTap: () {
                    controller.start();
                    Navigator.pushReplacementNamed(context, '/game_cards_page');
                  }),
            ],
          );
        },
      ),
    );
  }
}
