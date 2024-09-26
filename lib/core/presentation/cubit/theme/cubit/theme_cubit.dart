// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    _saveTheme(isLight);
  }

  Future<void> _saveTheme(bool isLight) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLight', isLight);
  }

  static Future<bool> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLight') ?? false;
  }

  Future<void> setInitialTheme() async {
    final isLight = await _loadTheme();
    final themeData = isLight ? _lightTheme : _darkTheme;
    emit(ThemeDomain(themeData));
  }
}
