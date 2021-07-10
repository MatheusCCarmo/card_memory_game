import 'package:card_memory_game/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'game_controller.g.dart';

class GameController = _GameController with _$GameController;

abstract class _GameController with Store {
  @observable
  ObservableList<CardModel> cards = List.generate(
    20,
    (index) => CardModel(icon: sportsIcons[index ~/ 2]),
  ).asObservable();

  @observable
  CardModel? lastFlippedCard;

  @action
  setLastFlippedCard(CardModel card) => lastFlippedCard = card;

  @action
  checkCards(CardModel cardItem) async {
    if (!haveAFlippedUnmatchedCard()) {
      cardItem.setIsFlipped(true);
      setLastFlippedCard(cardItem);
      return;
    }
    cardItem.setIsFlipped(true);
    await Future.delayed(Duration(seconds: 1));
    if (lastFlippedCard!.icon == cardItem.icon) {
      cardItem.setIsMatched(true);
      lastFlippedCard!.setIsMatched(true);
    } else {
      lastFlippedCard!.isFlipped = false;
      cardItem.isFlipped = false;
    }
  }

  bool haveAFlippedUnmatchedCard() {
    for (CardModel card in cards) {
      if (card.isFlipped && !card.isMatched) {
        return true;
      }
    }
    return false;
  }
}

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
