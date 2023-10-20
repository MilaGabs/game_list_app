import 'package:realm/realm.dart';
import 'package:realm_db/models/game.genre.dart';
import 'package:realm_db/models/player.dart';

abstract interface class IPlayerRepository {
  Future<List<Player>> getPlayers([ObjectId? gameId, GameGenre? gameGenre]);
  Player? getPlayer(ObjectId playerId);
  Future<Player> updatePlayer(Player player);
}
