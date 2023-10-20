import 'package:realm/realm.dart';
import 'package:realm_db/models/game.dart';
part 'player.games.g.dart';

@RealmModel()
class $PlayerGames {
  @PrimaryKey()
  late final ObjectId id;
  late $Game? game;
  late double hoursPlayed = 0.0;
}
