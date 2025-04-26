import 'package:flutter/material.dart';
import 'package:bloc_state_management/constants/strings.dart';

import '../../presentation/screens/character_details.dart';
import '../../presentation/screens/character_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case characterScreen:
        return MaterialPageRoute(builder: (_) => const CharacterScreen());

      case characterDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const CharacterDetailsScreen(),
        );
    }
  }
}
