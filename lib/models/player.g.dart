// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Player extends _Player with RealmEntity, RealmObjectBase, RealmObject {
  Player(
    ObjectId id,
    String name,
    String nickname, {
    PlayerGenre? playerGenre,
    Iterable<PlayerGames> playerGames = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'nickname', nickname);
    RealmObjectBase.set(this, 'playerGenre', playerGenre);
    RealmObjectBase.set<RealmList<PlayerGames>>(
        this, 'playerGames', RealmList<PlayerGames>(playerGames));
  }

  Player._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => throw RealmUnsupportedSetError();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get nickname =>
      RealmObjectBase.get<String>(this, 'nickname') as String;
  @override
  set nickname(String value) => RealmObjectBase.set(this, 'nickname', value);

  @override
  PlayerGenre? get playerGenre =>
      RealmObjectBase.get<PlayerGenre>(this, 'playerGenre') as PlayerGenre?;
  @override
  set playerGenre(covariant PlayerGenre? value) =>
      RealmObjectBase.set(this, 'playerGenre', value);

  @override
  RealmList<PlayerGames> get playerGames =>
      RealmObjectBase.get<PlayerGames>(this, 'playerGames')
          as RealmList<PlayerGames>;
  @override
  set playerGames(covariant RealmList<PlayerGames> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Player>> get changes =>
      RealmObjectBase.getChanges<Player>(this);

  @override
  Player freeze() => RealmObjectBase.freezeObject<Player>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Player._);
    return const SchemaObject(ObjectType.realmObject, Player, 'Player', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('nickname', RealmPropertyType.string),
      SchemaProperty('playerGenre', RealmPropertyType.object,
          optional: true, linkTarget: 'PlayerGenre'),
      SchemaProperty('playerGames', RealmPropertyType.object,
          linkTarget: 'PlayerGames', collectionType: RealmCollectionType.list),
    ]);
  }
}
