import 'package:mobx/mobx.dart';
part 'card_model.g.dart';

class CardModel = _CardModel with _$CardModel;

abstract class _CardModel with Store {
  @observable
  String? imgUrl;

  @observable
  bool isTurned = false;

  @action
  setImgUrl(String url) => imgUrl = url;

  @action
  setIsTurned(bool value) => isTurned = value;
}
