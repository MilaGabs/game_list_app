import 'package:get/get.dart';
import 'package:realm_db/repositories/player.genre.repository.dart';
import 'package:realm_db/repositories/player.repository.dart';
import 'package:realm_db/services/local.storage.service.dart';
import 'package:realm_db/views/controllers/home.controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(LocalStorage());
    Get.put(HomeController(
        playerRepository: PlayerRepository(),
        playerGenreRepository: PlayerGenreRepository()));
  }
}
