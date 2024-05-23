import 'package:flutter_mvc/app/models/games_model.dart';
import 'package:uno/uno.dart';

class GamesController {
  final uno = Uno();
  List<GamesModel> list = [];

  Future<List<GamesModel>> fetch() async {
    final response = await uno.get('https://www.freetogame.com/api/games');
    final gamesList = GamesModel.fromList(response.data);
    list = gamesList;
    return gamesList;
  }
}
