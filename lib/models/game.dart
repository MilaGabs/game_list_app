import 'package:realm/realm.dart';
import 'package:realm_db/models/player.genre.dart';
part 'game.g.dart';

@RealmModel()
class $Game {
  @PrimaryKey()
  late final ObjectId id;
  late String name;
  late $PlayerGenre? genre;
  late String summary;
}
