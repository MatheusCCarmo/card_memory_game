// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GameController on _GameController, Store {
  Computed<dynamic>? _$correctsComputed;

  @override
  dynamic get corrects =>
      (_$correctsComputed ??= Computed<dynamic>(() => super.corrects,
              name: '_GameController.corrects'))
          .value;
  Computed<dynamic>? _$themeIconsComputed;

  @override
  dynamic get themeIcons =>
      (_$themeIconsComputed ??= Computed<dynamic>(() => super.themeIcons,
              name: '_GameController.themeIcons'))
          .value;
  Computed<dynamic>? _$correctPercentualComputed;

  @override
  dynamic get correctPercentual => (_$correctPercentualComputed ??=
          Computed<dynamic>(() => super.correctPercentual,
              name: '_GameController.correctPercentual'))
      .value;
  Computed<bool>? _$hasWonComputed;

  @override
  bool get hasWon => (_$hasWonComputed ??=
          Computed<bool>(() => super.hasWon, name: '_GameController.hasWon'))
      .value;

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

  final _$isCheckingAtom = Atom(name: '_GameController.isChecking');

  @override
  bool get isChecking {
    _$isCheckingAtom.reportRead();
    return super.isChecking;
  }

  @override
  set isChecking(bool value) {
    _$isCheckingAtom.reportWrite(value, super.isChecking, () {
      super.isChecking = value;
    });
  }

  final _$cardsQuantityAtom = Atom(name: '_GameController.cardsQuantity');

  @override
  int get cardsQuantity {
    _$cardsQuantityAtom.reportRead();
    return super.cardsQuantity;
  }

  @override
  set cardsQuantity(int value) {
    _$cardsQuantityAtom.reportWrite(value, super.cardsQuantity, () {
      super.cardsQuantity = value;
    });
  }

  final _$themeAtom = Atom(name: '_GameController.theme');

  @override
  GameThemes get theme {
    _$themeAtom.reportRead();
    return super.theme;
  }

  @override
  set theme(GameThemes value) {
    _$themeAtom.reportWrite(value, super.theme, () {
      super.theme = value;
    });
  }

  final _$missesAtom = Atom(name: '_GameController.misses');

  @override
  int get misses {
    _$missesAtom.reportRead();
    return super.misses;
  }

  @override
  set misses(int value) {
    _$missesAtom.reportWrite(value, super.misses, () {
      super.misses = value;
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
  dynamic setCardsQuantity(int newQuantity) {
    final _$actionInfo = _$_GameControllerActionController.startAction(
        name: '_GameController.setCardsQuantity');
    try {
      return super.setCardsQuantity(newQuantity);
    } finally {
      _$_GameControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTheme(GameThemes newTheme) {
    final _$actionInfo = _$_GameControllerActionController.startAction(
        name: '_GameController.setTheme');
    try {
      return super.setTheme(newTheme);
    } finally {
      _$_GameControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic incrementMisses() {
    final _$actionInfo = _$_GameControllerActionController.startAction(
        name: '_GameController.incrementMisses');
    try {
      return super.incrementMisses();
    } finally {
      _$_GameControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic resetMisses() {
    final _$actionInfo = _$_GameControllerActionController.startAction(
        name: '_GameController.resetMisses');
    try {
      return super.resetMisses();
    } finally {
      _$_GameControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic shuffle() {
    final _$actionInfo = _$_GameControllerActionController.startAction(
        name: '_GameController.shuffle');
    try {
      return super.shuffle();
    } finally {
      _$_GameControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic start() {
    final _$actionInfo = _$_GameControllerActionController.startAction(
        name: '_GameController.start');
    try {
      return super.start();
    } finally {
      _$_GameControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cards: ${cards},
lastFlippedCard: ${lastFlippedCard},
isChecking: ${isChecking},
cardsQuantity: ${cardsQuantity},
theme: ${theme},
misses: ${misses},
corrects: ${corrects},
themeIcons: ${themeIcons},
correctPercentual: ${correctPercentual},
hasWon: ${hasWon}
    ''';
  }
}
