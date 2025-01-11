import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/common/app_colors.dart';
import 'package:rick_and_morty/feature/domain/entities/character_entity.dart';
import 'package:rick_and_morty/feature/presentation/bloc/cubit/characters_list_cubit.dart';
import 'package:rick_and_morty/feature/presentation/bloc/search_bloc/search_bloc.dart';
import 'package:rick_and_morty/feature/presentation/pages/character_info_page.dart';
import 'package:rick_and_morty/feature/presentation/pages/characters_list_page.dart';
import 'package:rick_and_morty/locator_service.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CharactersListCubit>(
          create: (context) => di.sl<CharactersListCubit>()..loadCharacters(),
        ),
        BlocProvider<SearchCharactersBloc>(
          create: (context) => di.sl<SearchCharactersBloc>(),
        )
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const CharactersListPage(),
          '/character': (context) {
            final character =
                ModalRoute.of(context)!.settings.arguments as CharacterEntity;
            return CharacterInfoPage(character: character);
          },
        },
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: AppColors.mainBackground),
      ),
    );
  }
}
