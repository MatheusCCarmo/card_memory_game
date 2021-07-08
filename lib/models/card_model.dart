import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'card_model.g.dart';

class CardModel = _CardModel with _$CardModel;

abstract class _CardModel with Store {
  @observable
  bool isFlipped;

  final int id;
  final IconData icon;

  _CardModel({required this.id, required this.icon, this.isFlipped = false});

  @action
  setIsFlipped(bool value) => isFlipped = value;
}
