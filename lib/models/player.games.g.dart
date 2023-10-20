// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.games.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class PlayerGames extends $PlayerGames
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  PlayerGames(
    ObjectId id, {
    Game? game,
    double hoursPlayed = 0.0,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<PlayerGames>({
        'hoursPlayed': 0.0,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'game', game);
    RealmObjectBase.set(this, 'hoursPlayed', hoursPlayed);
  }

  PlayerGames._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => throw RealmUnsupportedSetError();

  @override
  Game? get game => RealmObjectBase.get<Game>(this, 'game') as Game?;
  @override
  set game(covariant Game? value) => RealmObjectBase.set(this, 'game', value);

  @override
  double get hoursPlayed =>
      RealmObjectBase.get<double>(this, 'hoursPlayed') as double;
  @override
  set hoursPlayed(double value) =>
      RealmObjectBase.set(this, 'hoursPlayed', value);

  @override
  Stream<RealmObjectChanges<PlayerGames>> get changes =>
      RealmObjectBase.getChanges<PlayerGames>(this);

  @override
  PlayerGames freeze() => RealmObjectBase.freezeObject<PlayerGames>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(PlayerGames._);
    return const SchemaObject(
        ObjectType.realmObject, PlayerGames, 'PlayerGames', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('game', RealmPropertyType.object,
          optional: true, linkTarget: 'Game'),
      SchemaProperty('hoursPlayed', RealmPropertyType.double),
    ]);
  }
}
