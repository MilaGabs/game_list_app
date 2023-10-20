import 'package:get/get.dart';
import 'package:realm/realm.dart';
import 'package:realm_db/models/game.dart';
import 'package:realm_db/repositories/game.repository.interface.dart';
import 'package:realm_db/services/local.storage.interface.dart';
import 'package:realm_db/services/local.storage.service.dart';

class GameRepository implements IGameRepository {
  final ILocalStorage storage;

  GameRepository() : storage = Get.find<LocalStorage>();

  @override
  Future<Iterable<Game>> getGames() async {
    var games = storage.getAll<Game>();

    return games;
  }

  @override
  Game? getGame(ObjectId gameId) {
    var game = storage.find<Game>(gameId);

    return game;
  }

  @override
  Future<Game> updateGame(Game game) async {
    return await storage.add<Game>(game);
  }
}
