// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Game extends $Game with RealmEntity, RealmObjectBase, RealmObject {
  Game(
    ObjectId id,
    String name,
    String summary, {
    PlayerGenre? genre,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'genre', genre);
    RealmObjectBase.set(this, 'summary', summary);
  }

  Game._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => throw RealmUnsupportedSetError();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  PlayerGenre? get genre =>
      RealmObjectBase.get<PlayerGenre>(this, 'genre') as PlayerGenre?;
  @override
  set genre(covariant PlayerGenre? value) =>
      RealmObjectBase.set(this, 'genre', value);

  @override
  String get summary => RealmObjectBase.get<String>(this, 'summary') as String;
  @override
  set summary(String value) => RealmObjectBase.set(this, 'summary', value);

  @override
  Stream<RealmObjectChanges<Game>> get changes =>
      RealmObjectBase.getChanges<Game>(this);

  @override
  Game freeze() => RealmObjectBase.freezeObject<Game>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Game._);
    return const SchemaObject(ObjectType.realmObject, Game, 'Game', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('genre', RealmPropertyType.object,
          optional: true, linkTarget: 'PlayerGenre'),
      SchemaProperty('summary', RealmPropertyType.string),
    ]);
  }
}
