import 'package:get/get.dart';
import 'package:realm/realm.dart';
import 'package:realm_db/models/game.genre.dart';
import 'package:realm_db/repositories/game.genre.repository.interface.dart';
import 'package:realm_db/services/local.storage.interface.dart';
import 'package:realm_db/services/local.storage.service.dart';

class GameGenreRepository implements IGameGenreRepository {
  final ILocalStorage storage;

  GameGenreRepository() : storage = Get.find<LocalStorage>();

  @override
  Future<Iterable<GameGenre>> getGenres() async {
    var genres = storage.getAll<GameGenre>();

    return genres;
  }

  @override
  GameGenre? getGenre(ObjectId genreId) {
    var genre = storage.find<GameGenre>(genreId);

    return genre;
  }
}
