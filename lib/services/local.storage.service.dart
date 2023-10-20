import 'package:realm/realm.dart';
import 'package:realm_db/models/game.dart';
import 'package:realm_db/models/game.genre.dart';
import 'package:realm_db/models/player.dart';
import 'package:realm_db/models/player.games.dart';
import 'package:realm_db/models/player.genre.dart';
import 'package:realm_db/services/local.storage.interface.dart';

class LocalStorage implements ILocalStorage {
  late final Realm _realm;

  LocalStorage() {
    _realm = Realm(
      Configuration.local(
        [
          GameGenre.schema,
          PlayerGenre.schema,
          Game.schema,
          PlayerGames.schema,
          Player.schema,
        ],
        initialDataCallback: (realm) {
          realm.addAll(
            [
              PlayerGenre(ObjectId(), 'Female'),
              PlayerGenre(ObjectId(), 'Male'),
              PlayerGenre(ObjectId(), 'Any other')
            ],
          );
          realm.addAll(
            [
              GameGenre(ObjectId(), 'Action'),
              GameGenre(ObjectId(), 'Adventure'),
              GameGenre(ObjectId(), 'RPG'),
              GameGenre(ObjectId(), 'Simulation'),
              GameGenre(ObjectId(), 'Strategy'),
              GameGenre(ObjectId(), 'Sport'),
              GameGenre(ObjectId(), 'Race'),
              GameGenre(ObjectId(), 'Terror')
            ],
          );
        },
        schemaVersion: 2,
      ),
    );
  }

  @override
  Future<M> add<M extends RealmObject>(M item) async {
    return await _realm.writeAsync(() => _realm.add(item));
  }

  @override
  Future<void> addList<M extends RealmObject>(Iterable<M> items) async {
    await _realm.writeAsync(() => _realm.addAll(items));
  }

  @override
  Future<void> delete<M extends RealmObject>(M item) async {
    await _realm.writeAsync(() => _realm.delete<M>(item));
  }

  @override
  M? find<M extends RealmObject>(primaryKey) {
    return _realm.find<M>(primaryKey);
  }

  @override
  List<M> getAll<M extends RealmObject>() {
    return _realm.all<M>().toList();
  }

  @override
  Future<M> update<M extends RealmObject>(M item) async {
    return await _realm.writeAsync(() => _realm.add(item, update: true));
  }
}
