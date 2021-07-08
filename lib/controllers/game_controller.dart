import 'package:card_memory_game/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'game_controller.g.dart';

class GameController = _GameController with _$GameController;

abstract class _GameController with Store {
  @observable
  ObservableList<CardModel> cards = [
    CardModel(id: 0, icon: sportsIcons[0]),
    CardModel(id: 1, icon: sportsIcons[1]),
    CardModel(id: 2, icon: sportsIcons[2]),
    CardModel(id: 3, icon: sportsIcons[3]),
    CardModel(id: 4, icon: sportsIcons[4]),
    CardModel(id: 5, icon: sportsIcons[5]),
    CardModel(id: 6, icon: sportsIcons[6]),
    CardModel(id: 7, icon: sportsIcons[7]),
  ].asObservable();
  // List.generate(
  //   20,
  //   (index) => CardModel(id: index, icon: sportsIcons[index ~/ 2]),
  // ).asObservable();

  CardModel getCard(CardModel card) {
    return cards.firstWhere((element) => element.id == card.id);
  }

  @action
  flipCard(CardModel card) {
    // int index = cards.indexWhere((element) => element.id == card.id);
    // print(index.toString());
    // cards[index].isFlipped = true;
  }

  @action
  checkCards(CardModel card2) {
    print('CARTA DO CONTROLLER' + getCard(card2).isFlipped.toString());
    if (!haveAFlipedCard()) {
      print('nao tem cartas viradas');
      return;
    }
    print('teste');
    CardModel? card1;
    for (CardModel card in cards) {
      if (card.isFlipped && card != card2) {
        card1 = card;
      }
    }
    if (card1?.icon == card2.icon) {
      print('acertou');
    } else {
      card1?.isFlipped = false;
      card2.isFlipped = false;
    }
  }

  bool haveAFlipedCard() {
    int indexFlipepd = cards.indexWhere((element) => element.isFlipped);
    if (indexFlipepd >= 0) {
      return true;
    }
    for (CardModel card in cards) {
      if (card.isFlipped) {
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
