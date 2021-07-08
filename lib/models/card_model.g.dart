// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CardModel on _CardModel, Store {
  final _$imgUrlAtom = Atom(name: '_CardModel.imgUrl');

  @override
  String? get imgUrl {
    _$imgUrlAtom.reportRead();
    return super.imgUrl;
  }

  @override
  set imgUrl(String? value) {
    _$imgUrlAtom.reportWrite(value, super.imgUrl, () {
      super.imgUrl = value;
    });
  }

  final _$isTurnedAtom = Atom(name: '_CardModel.isTurned');

  @override
  bool get isTurned {
    _$isTurnedAtom.reportRead();
    return super.isTurned;
  }

  @override
  set isTurned(bool value) {
    _$isTurnedAtom.reportWrite(value, super.isTurned, () {
      super.isTurned = value;
    });
  }

  final _$_CardModelActionController = ActionController(name: '_CardModel');

  @override
  dynamic setImgUrl(String url) {
    final _$actionInfo =
        _$_CardModelActionController.startAction(name: '_CardModel.setImgUrl');
    try {
      return super.setImgUrl(url);
    } finally {
      _$_CardModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setIsTurned(bool value) {
    final _$actionInfo = _$_CardModelActionController.startAction(
        name: '_CardModel.setIsTurned');
    try {
      return super.setIsTurned(value);
    } finally {
      _$_CardModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imgUrl: ${imgUrl},
isTurned: ${isTurned}
    ''';
  }
}
