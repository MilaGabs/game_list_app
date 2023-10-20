import 'package:realm/realm.dart';
part 'game.genre.g.dart';

@RealmModel()
class $GameGenre {
  @PrimaryKey()
  late final ObjectId id;
  late String genre;
}
