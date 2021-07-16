import 'package:card_memory_game/shared/card_icons.dart';
import 'package:flutter/material.dart';

class IconsTheme {
  static Map<GameThemes, CardsIcons> themes = {
    GameThemes.sports: SportsIcons(),
    GameThemes.transport: TransportIcons(),
    GameThemes.food: FoodIcons(),
    GameThemes.building: BuildingIcons(),
  };
}

enum GameThemes { sports, transport, food, building }
