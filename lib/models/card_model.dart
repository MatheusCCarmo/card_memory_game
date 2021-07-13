import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'card_model.g.dart';

class CardModel = _CardModel with _$CardModel;

abstract class _CardModel with Store {
  @observable
  bool isFlipped = false;

  @observable
  bool isMatched = false;

  final IconData icon;

  _CardModel({required this.icon});

  @action
  setIsFlipped(bool value) => isFlipped = value;

  @action
  setIsMatched(bool value) => isMatched = value;
}
