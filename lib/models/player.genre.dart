import 'package:realm/realm.dart';
part 'player.genre.g.dart';

@RealmModel()
class $PlayerGenre {
  @PrimaryKey()
  late final ObjectId id;
  late String genre;
}
