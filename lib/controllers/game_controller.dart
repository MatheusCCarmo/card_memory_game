import 'package:card_memory_game/models/card_model.dart';
import 'package:mobx/mobx.dart';
part 'game_controller.g.dart';

class GameController = _GameController with _$GameController;

abstract class _GameController with Store {
  @observable
  List<CardModel> cards = List.generate(
    20,
    (index) => CardModel(),
  );
}
