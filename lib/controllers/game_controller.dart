import 'dart:math';

import 'package:card_memory_game/models/card_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'game_controller.g.dart';

class GameController = _GameController with _$GameController;

abstract class _GameController with Store {
  @observable
  ObservableList<CardModel> cards = List.generate(
    sportsIcons.length * 2,
    (index) => CardModel(icon: sportsIcons[index ~/ 2]),
  ).asObservable();

  @observable
  CardModel? lastFlippedCard;

  @observable
  bool isChecking = false;

  @observable
  int? cardsQuantity;

  @observable
  GameThemes? theme;

  @action
  setCardsQuantity(int newQuantity) => cardsQuantity = newQuantity;

  @action
  setTheme(GameThemes newTheme) => theme = newTheme;

  @computed
  bool get hasWon => cards.every((element) => element.isMatched);

  @action
  shuffle() {
    var random = new Random();

    for (var i = cards.length - 1; i > 0; i--) {
      var n = random.nextInt(i + 1);

      var temp = cards[i];
      cards[i] = cards[n];
      cards[n] = temp;
    }
  }

  @action
  checkCards(CardModel cardItem) async {
    if (isChecking || cardItem.isFlipped) return;
    isChecking = true;
    cardItem.setIsFlipped(true);
    if (lastFlippedCard == null) {
      lastFlippedCard = cardItem;
      isChecking = false;
      return;
    }

    await Future.delayed(Duration(milliseconds: 800));

    if (lastFlippedCard!.icon == cardItem.icon) {
      lastFlippedCard!.setIsMatched(true);
      cardItem.setIsMatched(true);
    } else {
      lastFlippedCard!.setIsFlipped(false);
      cardItem.setIsFlipped(false);
    }
    lastFlippedCard = null;
    isChecking = false;
  }
}

enum GameThemes { sports, transport }

List<IconData> sportsIcons = [
  Icons.sports_baseball,
  Icons.sports_cricket,
  Icons.sports_basketball,
  Icons.sports_football_rounded,
  Icons.sports_soccer_rounded,
  Icons.sports_tennis_rounded,
  Icons.sports_volleyball_sharp,
  Icons.sports_motorsports_rounded,
  Icons.sports_hockey,
  Icons.sports_mma_rounded,
];

List<IconData> transportIcons = [
  Icons.drive_eta,
  Icons.bike_scooter,
  Icons.train,
  Icons.subway,
  Icons.motorcycle,
  Icons.airplanemode_active,
  Icons.traffic_rounded,
  Icons.sports_motorsports_rounded,
  Icons.sports_hockey,
  Icons.sports_mma_rounded,
];
