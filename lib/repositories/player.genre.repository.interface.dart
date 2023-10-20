import 'package:realm/realm.dart';
import 'package:realm_db/models/player.genre.dart';

abstract interface class IPlayerGenreRepository {
  Future<List<PlayerGenre>> getGenres();
  PlayerGenre? getGenre(ObjectId genreId);
}
