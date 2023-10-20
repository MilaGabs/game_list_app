import 'package:realm/realm.dart';
import 'package:realm_db/models/game.dart';

abstract interface class IGameRepository {
  Future<Iterable<Game>> getGames();
  Game? getGame(ObjectId gameId);
  Future<Game> updateGame(Game game);
}
