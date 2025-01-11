import 'package:flutter/material.dart';
import 'package:rick_and_morty/feature/presentation/widgets/characters_list_widget.dart';
import 'package:rick_and_morty/feature/presentation/widgets/search_delegate.dart';

class CharactersListPage extends StatelessWidget {
  const CharactersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Characters'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegate());
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: CharactersListWidget(),
    );
  }
}
