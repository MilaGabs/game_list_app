import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realm/realm.dart';
import 'package:realm_db/models/player.dart';
import 'package:realm_db/models/player.genre.dart';
import 'package:realm_db/repositories/player.genre.repository.interface.dart';
import 'package:realm_db/repositories/player.repository.interface.dart';

class HomeController extends GetxController {
  IPlayerRepository playerRepository;
  IPlayerGenreRepository playerGenreRepository;
  RxList<Player>? players;
  List<PlayerGenre> playerGenres = [];

  HomeController(
      {required this.playerRepository, required this.playerGenreRepository});

  final form = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final nicknameController = TextEditingController();
  PlayerGenre? playerGenreController;

  @override
  void onInit() {
    loadPlayers();
    loadGenres();
    super.onInit();
  }

  void clearFields() {
    nameController.text = '';
    nicknameController.text = '';
    playerGenreController = null;
  }

  Future<void> newPlayer() async {
    final newPlayer = Player(
        ObjectId(), nameController.text, nicknameController.text,
        playerGenre: playerGenreController);

    players?.add(await playerRepository.updatePlayer(newPlayer));
  }

  Future<void> loadGenres() async {
    playerGenres = await playerGenreRepository.getGenres();
  }

  Future<void> loadPlayers() async {
    List<Player> gamers = await playerRepository.getPlayers();
    players = gamers.obs;
  }
}
