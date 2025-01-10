import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/feature/domain/entities/character_entity.dart';
import 'package:rick_and_morty/feature/presentation/bloc/cubit/characters_list_cubit.dart';
import 'package:rick_and_morty/feature/presentation/widgets/character_list_card_widget.dart';

class CharactersListWidget extends StatelessWidget {
  const CharactersListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersListCubit, CharactersListState>(
      builder: (context, state) {
        List<CharacterEntity> charactersList = [];
        if (state is CharactersListLoadingState && state.isFirstFetch) {
          return _loadingIndicator();
        } else if (state is CharactersListLoadedState) {
          charactersList = state.charactersList;
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return CharacterListCardWidget(
                    character: charactersList[index]);
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: charactersList.length),
        );
      },
    );
  }

  Widget _loadingIndicator() {
    return const Center(child: CircularProgressIndicator());
  }
}
