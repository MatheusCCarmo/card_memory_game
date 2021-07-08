// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CardModel on _CardModel, Store {
  final _$isFlippedAtom = Atom(name: '_CardModel.isFlipped');

  @override
  bool get isFlipped {
    _$isFlippedAtom.reportRead();
    return super.isFlipped;
  }

  @override
  set isFlipped(bool value) {
    _$isFlippedAtom.reportWrite(value, super.isFlipped, () {
      super.isFlipped = value;
    });
  }

  final _$_CardModelActionController = ActionController(name: '_CardModel');

  @override
  dynamic setIsFlipped(bool value) {
    final _$actionInfo = _$_CardModelActionController.startAction(
        name: '_CardModel.setIsFlipped');
    try {
      return super.setIsFlipped(value);
    } finally {
      _$_CardModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isFlipped: ${isFlipped}
    ''';
  }
}
