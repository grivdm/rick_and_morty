import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/common/app_colors.dart';
import 'package:rick_and_morty/feature/presentation/bloc/search_bloc/search_bloc.dart';
import 'package:rick_and_morty/feature/presentation/widgets/character_list_card_widget.dart';
import 'package:rick_and_morty/feature/presentation/widgets/loading_widget.dart';

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate() : super(searchFieldLabel: 'Search for characters...');

  final _suggestions = [
    'Rick',
    'Morty',
    'Summer',
    'Beth',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
          showSuggestions(context);
        },
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () => close(context, null));
  }

  @override
  Widget buildResults(BuildContext context) {
    BlocProvider.of<SearchCharactersBloc>(context)
        .add(SearchCharactersEvent(query));
    return BlocBuilder<SearchCharactersBloc, SearchCharactersState>(
      builder: (context, state) {
        if (state is SearchCharactersLoadingState) {
          return const LoadingWidget();
        } else if (state is SearchCharactersLoadedState) {
          final charactersList = state.characters;
          if (charactersList.isEmpty) {
            return const Text('No Characters found');
          } else {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/character',
                          arguments: charactersList[index]);
                    },
                    child: CharacterListCardWidget(
                        character: charactersList[index]),
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: charactersList.length,
              ),
            );
          }
        }
        return Container();
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return ListView.separated(
        padding: const EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              query = _suggestions[index];
              showSuggestions(context);
            },
            child: Text(
              _suggestions[index],
              style: const TextStyle(
                color: AppColors.greyColor,
                fontSize: 16,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: _suggestions.length,
      );
    }
    return Container();
  }
}
