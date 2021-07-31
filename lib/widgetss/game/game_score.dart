import 'package:card_memory_game/controllers/game_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class GameScore extends StatelessWidget {
  const GameScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<GameController>(context);

    return Observer(
      builder: (context) => Container(
        height: 40,
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              controller.corrects.toString(),
              style: TextStyle(
                color: Colors.green.shade700,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            Column(
              children: [
                Text(
                  'Rate',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  controller.misses == 0 && controller.corrects == 0
                      ? ''
                      : '${controller.correctPercentual}%',
                  style: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            Text(
              controller.misses.toString(),
              style: TextStyle(
                color: Colors.red.shade600,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            )
          ],
        ),
      ),
    );
  }
}
