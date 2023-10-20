// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.genre.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class GameGenre extends $GameGenre
    with RealmEntity, RealmObjectBase, RealmObject {
  GameGenre(
    ObjectId id,
    String genre,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'genre', genre);
  }

  GameGenre._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => throw RealmUnsupportedSetError();

  @override
  String get genre => RealmObjectBase.get<String>(this, 'genre') as String;
  @override
  set genre(String value) => RealmObjectBase.set(this, 'genre', value);

  @override
  Stream<RealmObjectChanges<GameGenre>> get changes =>
      RealmObjectBase.getChanges<GameGenre>(this);

  @override
  GameGenre freeze() => RealmObjectBase.freezeObject<GameGenre>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(GameGenre._);
    return const SchemaObject(ObjectType.realmObject, GameGenre, 'GameGenre', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('genre', RealmPropertyType.string),
    ]);
  }
}
