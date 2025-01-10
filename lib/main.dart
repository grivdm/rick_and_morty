import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/common/app_colors.dart';
import 'package:rick_and_morty/feature/presentation/bloc/cubit/characters_list_cubit.dart';
import 'package:rick_and_morty/feature/presentation/bloc/search_bloc/search_bloc.dart';
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
        BlocProvider<SearchBloc>(
          create: (context) => di.sl<SearchBloc>(),
        )
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const CharactersListPage(),
        },
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: AppColors.mainBackground),
      ),
    );
  }
}
