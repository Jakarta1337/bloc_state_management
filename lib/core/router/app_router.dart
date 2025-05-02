import 'package:bloc_state_management/domain/cubit/character_cubit.dart';
import 'package:flutter/material.dart';
import 'package:bloc_state_management/constants/strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/API/characters_api.dart';
import '../../data/repository/characters_repository.dart';
import '../../presentation/screens/character_details.dart';
import '../../presentation/screens/character_screen.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository = CharactersRepository(CharactersApi());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case characterScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (BuildContext context) => charactersCubit,
                child: CharacterScreen(),
              ),
        );

      case characterDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const CharacterDetailsScreen(),
        );
    }
    return null;
  }
}
