import 'package:flutter/material.dart';
import 'package:rick_and_morty/feature/presentation/widgets/characters_list_widget.dart';

class CharactersListPage extends StatelessWidget {
  const CharactersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Characters'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: const CharactersListWidget(),
    );
  }
}
