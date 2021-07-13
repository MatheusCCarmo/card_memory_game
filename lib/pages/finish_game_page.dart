import 'package:card_memory_game/widgetss/custom_button.dart';
import 'package:flutter/material.dart';

class FinishGamePage extends StatelessWidget {
  const FinishGamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  onTap: () {},
                ),
                CustomButton(
                  title: 'Mudar Tema',
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
