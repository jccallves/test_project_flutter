// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:test_project/core/application/configs/theme/theme.dart';
import 'package:test_project/core/domain/entities/theme_domain.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeDomain> {
  static final ColorScheme _lightTheme = MaterialTheme.lightScheme();
  static final ColorScheme _darkTheme = MaterialTheme.darkScheme();
  ThemeCubit() : super(ThemeDomain(_lightTheme));

  void toogleTheme(bool isLight) {
    final themeData = isLight ? _lightTheme : _darkTheme;
    emit(ThemeDomain(themeData));
  }
}
