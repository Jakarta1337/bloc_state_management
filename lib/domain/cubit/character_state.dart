part of 'character_cubit.dart';

@immutable
sealed class CharactersState {}

final class CharacterInitial extends CharactersState {}

class CharacterLoaded extends CharactersState {
  final List<Character> characters;

  CharacterLoaded({required this.characters});
}
