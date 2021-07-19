import 'package:card_memory_game/controllers/game_controller.dart';
import 'package:card_memory_game/shared/card_icons.dart';
import 'package:card_memory_game/shared/game_card_theme.dart';
import 'package:card_memory_game/widgetss/start_game/settings_option_widget.dart';
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
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  IconsTheme.themes.length,
                  (index) {
                    var gameTheme = GameThemes.values.elementAt(index);
                    var cardsIcons = IconsTheme.themes[gameTheme] as CardsIcons;
                    var iconsList = cardsIcons.icons;
                    return SettingsOptionWidget(
                      themeInfo: gameTheme,
                      content: Icon(
                        iconsList[0],
                        size: 60,
                      ),
                      onTap: () {
                        controller.setTheme(gameTheme);
                      },
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  4,
                  (index) {
                    return SettingsOptionWidget(
                      quantityInfo: (index + 2) * 4,
                      content: Text(
                        '${(index + 2) * 4}',
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        controller.setCardsQuantity((index + 2) * 4);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
