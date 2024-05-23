import 'package:flutter/material.dart';
import 'package:flutter_mvc/app/controllers/games_controller.dart';

class GamesView extends StatefulWidget {
  const GamesView({super.key});

  @override
  State<GamesView> createState() => _GamesViewState();
}

class _GamesViewState extends State<GamesView> {
  final controller = GamesController();

  @override
  void initState() {
    super.initState();
    controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    final games = controller.list;
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: games.length,
          itemBuilder: ((context, index) {
            return ListTile(
              title: Text(
                games[index].title ?? 'Título',
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
