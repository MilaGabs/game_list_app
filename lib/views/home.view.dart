import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realm_db/models/player.genre.dart';
import 'package:realm_db/views/controllers/home.controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Players',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Obx(
            () {
              if (controller.players == null) {
                return const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Colors.purple,
                    ),
                  ),
                );
              } else if (controller.players!.isNotEmpty) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: controller.players!.length,
                    itemBuilder: (context, index) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(controller.players![index].name),
                        ),
                        const Divider(),
                      ],
                    ),
                  ),
                );
              } else {
                return const Expanded(
                  child: Center(
                    child: Text('No items to show'),
                  ),
                );
              }
            },
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    controller.clearFields();
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: const EdgeInsets.all(0),
                        content: Form(
                          key: controller.form,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                                height: 50,
                                child: const Center(
                                  child: Text(
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                      'Add New Player'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller: controller.nameController,
                                  decoration: const InputDecoration(
                                    label: Text('Name'),
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.purple)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller: controller.nicknameController,
                                  decoration: const InputDecoration(
                                    label: Text('Nickname'),
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.purple)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButtonFormField<PlayerGenre>(
                                  items: controller.playerGenres
                                      .map<DropdownMenuItem<PlayerGenre>>(
                                          (value) {
                                    return DropdownMenuItem<PlayerGenre>(
                                      value: value,
                                      child: Text(value.genre),
                                    );
                                  }).toList(),
                                  decoration: const InputDecoration(
                                    label: Text('Genre'),
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.purple)),
                                  ),
                                  value: controller.playerGenreController,
                                  onChanged: (PlayerGenre? value) {
                                    controller.playerGenreController = value;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () async {
                              await controller
                                  .newPlayer()
                                  .then((value) => Navigator.pop(context));
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            child: const Text('Ok'),
                          ),
                          ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            child: const Text('Cancel'),
                          ),
                        ],
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: const Text('New Player'),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Add New Game'),
                        content: Form(
                          key: controller.form,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  label: Text('Name'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            child: const Text('Ok'),
                          ),
                          ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            child: const Text('Cancel'),
                          ),
                        ],
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: const Text('New Game'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
