// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GameController on _GameController, Store {
  final _$cardsAtom = Atom(name: '_GameController.cards');

  @override
  ObservableList<CardModel> get cards {
    _$cardsAtom.reportRead();
    return super.cards;
  }

  @override
  set cards(ObservableList<CardModel> value) {
    _$cardsAtom.reportWrite(value, super.cards, () {
      super.cards = value;
    });
  }

  final _$lastFlippedCardAtom = Atom(name: '_GameController.lastFlippedCard');

  @override
  CardModel? get lastFlippedCard {
    _$lastFlippedCardAtom.reportRead();
    return super.lastFlippedCard;
  }

  @override
  set lastFlippedCard(CardModel? value) {
    _$lastFlippedCardAtom.reportWrite(value, super.lastFlippedCard, () {
      super.lastFlippedCard = value;
    });
  }

  final _$checkCardsAsyncAction = AsyncAction('_GameController.checkCards');

  @override
  Future checkCards(CardModel cardItem) {
    return _$checkCardsAsyncAction.run(() => super.checkCards(cardItem));
  }

  final _$_GameControllerActionController =
      ActionController(name: '_GameController');

  @override
  dynamic setLastFlippedCard(CardModel card) {
    final _$actionInfo = _$_GameControllerActionController.startAction(
        name: '_GameController.setLastFlippedCard');
    try {
      return super.setLastFlippedCard(card);
    } finally {
      _$_GameControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cards: ${cards},
lastFlippedCard: ${lastFlippedCard}
    ''';
  }
}
