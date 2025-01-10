// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:rick_and_morty/common/app_colors.dart';

import 'package:rick_and_morty/feature/domain/entities/character_entity.dart';

class CharacterListCardWidget extends StatelessWidget {
  final CharacterEntity character;
  const CharacterListCardWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
          color: AppColors.cellBackground,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            character.image,
            width: 160,
            height: 160,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    maxLines: 1,
                    character.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    spacing: 6,
                    children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          color: character.status == 'Alive'
                              ? Colors.green
                              : Colors.red,
                        ),
                      ),
                      Text(
                        '${character.status} | ${character.species}',
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Last known location:',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.greyColor,
                    ),
                  ),
                  Text(
                    character.location.name,
                    style: const TextStyle(fontSize: 12),
                  ),
                  const Text(
                    'Origin:',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.greyColor,
                    ),
                  ),
                  Text(
                    character.origin.name,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
