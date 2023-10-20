import 'package:get/get.dart';
import 'package:realm/realm.dart';
import 'package:realm_db/models/player.genre.dart';
import 'package:realm_db/repositories/player.genre.repository.interface.dart';
import 'package:realm_db/services/local.storage.interface.dart';
import 'package:realm_db/services/local.storage.service.dart';

class PlayerGenreRepository implements IPlayerGenreRepository {
  final ILocalStorage storage;

  PlayerGenreRepository() : storage = Get.find<LocalStorage>();

  @override
  Future<List<PlayerGenre>> getGenres() async {
    var genres = storage.getAll<PlayerGenre>();

    return genres;
  }

  @override
  PlayerGenre? getGenre(ObjectId genreId) {
    var genre = storage.find<PlayerGenre>(genreId);

    return genre;
  }
}
