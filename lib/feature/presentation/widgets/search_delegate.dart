import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/common/app_colors.dart';
import 'package:rick_and_morty/feature/domain/entities/character_entity.dart';
import 'package:rick_and_morty/feature/presentation/bloc/search_bloc/search_bloc.dart';
import 'package:rick_and_morty/feature/presentation/widgets/character_list_card_widget.dart';
import 'package:rick_and_morty/feature/presentation/widgets/error_message_widget.dart';
import 'package:rick_and_morty/feature/presentation/widgets/loading_widget.dart';

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate() : super(searchFieldLabel: 'Search for characters...');

  final _suggestions = [
    'Rick',
    'Morty',
    'Summer',
    'Beth',
  ];

  final scrollController = ScrollController();

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
  void showResults(BuildContext context) {
    context.read<SearchCharactersBloc>().add(
          SearchEvent.searchCharactersEvent(query),
        );
    super.showResults(context);
  }

  void scrollControllerSetup(BuildContext context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge &&
          scrollController.position.pixels != 0) {
        context
            .read<SearchCharactersBloc>()
            .add(SearchEvent.searchCharactersEvent(query));
      }
    });
  }

  @override
  Widget buildResults(BuildContext context) {
    final state = context.watch<SearchCharactersBloc>().state;
    scrollControllerSetup(context);

    return state.when(
      empty: () {
        return const ErrorMessageWidget('No characters found');
      },
      loading: (oldCharactersList, isFirstFetch) {
        if (isFirstFetch) {
          return const LoadingWidget();
        } else {
          return _buildCharacterList(oldCharactersList, true);
        }
      },
      loaded: (newCharactersList) {
        return _buildCharacterList(newCharactersList, false);
      },
      error: (message) {
        return ErrorMessageWidget(message);
      },
    );
  }

  Widget _buildCharacterList(
      List<CharacterEntity> charactersList, bool isLoading) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView.separated(
        controller: scrollController,
        itemBuilder: (context, index) {
          if (index < charactersList.length) {
            return GestureDetector(
              onTap: () {
                close(context, charactersList[index]);
                Navigator.pushNamed(
                  context,
                  '/character',
                  arguments: charactersList[index],
                );
              },
              child: CharacterListCardWidget(character: charactersList[index]),
            );
          } else {
            Timer(
              const Duration(milliseconds: 30),
              () => scrollController
                  .jumpTo(scrollController.position.maxScrollExtent),
            );
            return const LoadingWidget();
          }
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: charactersList.length + (isLoading ? 1 : 0),
      ),
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
              showResults(context);
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
