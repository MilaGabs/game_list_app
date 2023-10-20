import 'package:get/get.dart';
import 'package:realm/realm.dart';
import 'package:realm_db/models/game.genre.dart';
import 'package:realm_db/models/player.dart';
import 'package:realm_db/repositories/player.repository.interface.dart';
import 'package:realm_db/services/local.storage.interface.dart';
import 'package:realm_db/services/local.storage.service.dart';

class PlayerRepository implements IPlayerRepository {
  final ILocalStorage storage;

  PlayerRepository() : storage = Get.find<LocalStorage>();

  @override
  Future<List<Player>> getPlayers(
      [ObjectId? gameId, GameGenre? gameGenre]) async {
    var players = storage.getAll<Player>();

    return players;
  }

  @override
  Player? getPlayer(ObjectId playerId) {
    var player = storage.find<Player>(playerId);

    return player;
  }

  @override
  Future<Player> updatePlayer(Player player) async {
    return await storage.add<Player>(player);
  }
}
