import 'package:realm/realm.dart';
import 'package:realm_db/models/game.genre.dart';

abstract interface class IGameGenreRepository {
  Future<Iterable<GameGenre>> getGenres();
  GameGenre? getGenre(ObjectId genreId);
}
