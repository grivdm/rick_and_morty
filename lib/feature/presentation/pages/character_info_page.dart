// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:rick_and_morty/common/app_colors.dart';
import 'package:intl/intl.dart' as intl;

import 'package:rick_and_morty/feature/domain/entities/character_entity.dart';
import 'package:rick_and_morty/feature/presentation/widgets/character_image_widget.dart';

class CharacterInfoPage extends StatelessWidget {
  final CharacterEntity character;
  const CharacterInfoPage({
    super.key,
    required this.character,
  });

  Widget _infoField(String title, String info) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.greyColor,
          ),
        ),
        Text(
          info,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Align(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 25,
            ),
            child: Column(
              spacing: 15,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: CharacterImageWidget(
                    width: 300,
                    height: 300,
                    imageUrl: character.image,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 8,
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        color: character.status == 'Alive'
                            ? Colors.green
                            : Colors.red,
                      ),
                    ),
                    Text(
                      character.status,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                _infoField(
                  'Gender:',
                  character.gender,
                ),
                _infoField(
                  'Number of episodes:',
                  character.episode.length.toString(),
                ),
                _infoField(
                  'Species:',
                  character.species,
                ),
                _infoField(
                  'Last known location',
                  character.location.name,
                ),
                _infoField(
                  'Origin',
                  character.origin.name,
                ),
                _infoField(
                  'Was created',
                  // character.created.toIso8601String(),
                  intl.DateFormat('dd.MM.yyyy').format(character.created),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
