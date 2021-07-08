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

  final _$_GameControllerActionController =
      ActionController(name: '_GameController');

  @override
  dynamic flipCard(CardModel card) {
    final _$actionInfo = _$_GameControllerActionController.startAction(
        name: '_GameController.flipCard');
    try {
      return super.flipCard(card);
    } finally {
      _$_GameControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic checkCards(CardModel card2) {
    final _$actionInfo = _$_GameControllerActionController.startAction(
        name: '_GameController.checkCards');
    try {
      return super.checkCards(card2);
    } finally {
      _$_GameControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cards: ${cards}
    ''';
  }
}
