// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:rick_and_morty/common/app_colors.dart';

import 'package:rick_and_morty/feature/domain/entities/character_entity.dart';
import 'package:rick_and_morty/feature/presentation/widgets/character_image_widget.dart';

class CharacterListCardWidget extends StatelessWidget {
  final CharacterEntity character;
  const CharacterListCardWidget({super.key, required this.character});

  Widget _infoField(String title, String info) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            color: AppColors.greyColor,
          ),
        ),
        Text(
          info,
          style: const TextStyle(
            fontSize: 12,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

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
          CharacterImageWidget(
              width: 160, height: 160, imageUrl: character.image),
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
                      Expanded(
                        child: Text(
                          '${character.status} | ${character.species}',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  _infoField('Last known location:', character.location.name),
                  const SizedBox(
                    height: 8,
                  ),
                  _infoField('Origin:', character.origin.name),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
