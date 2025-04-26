import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit() : super(CharacterInitial());
}
