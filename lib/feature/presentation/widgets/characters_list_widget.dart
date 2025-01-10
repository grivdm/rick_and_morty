import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/feature/domain/entities/character_entity.dart';
import 'package:rick_and_morty/feature/presentation/bloc/cubit/characters_list_cubit.dart';
import 'package:rick_and_morty/feature/presentation/widgets/character_list_card_widget.dart';

class CharactersListWidget extends StatelessWidget {
  CharactersListWidget({super.key});

  final ScrollController scrollController = ScrollController();

  void scrollControllerSetup(BuildContext context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge &&
          scrollController.position.pixels != 0) {
        context.read<CharactersListCubit>().loadCharacters();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    scrollControllerSetup(context);
    return BlocBuilder<CharactersListCubit, CharactersListState>(
      builder: (context, state) {
        List<CharacterEntity> charactersList = [];
        bool isLoading = false;
        if (state is CharactersListLoadingState && state.isFirstFetch) {
          return _loadingWidget();
        } else if (state is CharactersListLoadingState) {
          charactersList = state.oldCharactersList;
          isLoading = true;
        } else if (state is CharactersListLoadedState) {
          charactersList = state.charactersList;
        } else if (state is CharactersListErrorState) {
          return _errorWidget(state.message);
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListView.separated(
              controller: scrollController,
              itemBuilder: (context, index) {
                if (index < charactersList.length) {
                  return CharacterListCardWidget(
                      character: charactersList[index]);
                } else {
                  Timer(
                    const Duration(milliseconds: 30),
                    () {
                      scrollController
                          .jumpTo(scrollController.position.maxScrollExtent);
                    },
                  );
                  return _loadingWidget();
                }
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: charactersList.length + (isLoading ? 1 : 0)),
        );
      },
    );
  }

  Widget _errorWidget(String message) {
    return Text(
      message,
      style: const TextStyle(
        fontSize: 22,
      ),
    );
  }

  Widget _loadingWidget() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
