// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.genre.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class PlayerGenre extends $PlayerGenre
    with RealmEntity, RealmObjectBase, RealmObject {
  PlayerGenre(
    ObjectId id,
    String genre,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'genre', genre);
  }

  PlayerGenre._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => throw RealmUnsupportedSetError();

  @override
  String get genre => RealmObjectBase.get<String>(this, 'genre') as String;
  @override
  set genre(String value) => RealmObjectBase.set(this, 'genre', value);

  @override
  Stream<RealmObjectChanges<PlayerGenre>> get changes =>
      RealmObjectBase.getChanges<PlayerGenre>(this);

  @override
  PlayerGenre freeze() => RealmObjectBase.freezeObject<PlayerGenre>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(PlayerGenre._);
    return const SchemaObject(
        ObjectType.realmObject, PlayerGenre, 'PlayerGenre', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('genre', RealmPropertyType.string),
    ]);
  }
}
