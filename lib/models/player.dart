import 'package:realm/realm.dart';
import 'package:realm_db/models/player.games.dart';
import 'package:realm_db/models/player.genre.dart';
part 'player.g.dart';

@RealmModel()
class _Player {
  @PrimaryKey()
  late final ObjectId id;
  late String name;
  late String nickname;
  late $PlayerGenre? playerGenre;
  late List<$PlayerGames> playerGames;
}
