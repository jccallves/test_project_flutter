// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ThemeDomain extends Equatable {
  const ThemeDomain(
    this.themeData,
  ) : super();

  final ColorScheme themeData;

  @override
  List<Object?> get props => [themeData];
}
