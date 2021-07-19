import 'package:card_memory_game/controllers/game_controller.dart';
import 'package:card_memory_game/shared/card_icons.dart';
import 'package:card_memory_game/shared/game_card_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class SettingsOptionWidget extends StatelessWidget {
  GameThemes? themeInfo;
  int? quantityInfo;
  final content;
  final onTap;

  SettingsOptionWidget({
    Key? key,
    this.themeInfo,
    this.quantityInfo,
    required this.content,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<GameController>(context);

    return Expanded(
      child: Observer(
        builder: (context) {
          return GestureDetector(
            onTap: () {
              onTap();
            },
            child: Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: (quantityInfo == controller.cardsQuantity ||
                        themeInfo == controller.theme)
                    ? Colors.amber
                    : Colors.blue,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(4, 4),
                    blurRadius: 4,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: content,
            ),
          );
        },
      ),
    );
  }
}
