import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6d2212),
      surfaceTint: Color(0xff9b4430),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff9b4430),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff823d00),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffb05f25),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff514318),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff776738),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff231917),
      onSurfaceVariant: Color(0xff55423e),
      outline: Color(0xff88726d),
      outlineVariant: Color(0xffdbc1bb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2c),
      inversePrimary: Color(0xffffb4a4),
      primaryFixed: Color(0xffffdad3),
      onPrimaryFixed: Color(0xff3d0600),
      primaryFixedDim: Color(0xffffb4a4),
      onPrimaryFixedVariant: Color(0xff7c2d1c),
      secondaryFixed: Color(0xffffdbc8),
      onSecondaryFixed: Color(0xff311300),
      secondaryFixedDim: Color(0xffffb689),
      onSecondaryFixedVariant: Color(0xff733500),
      tertiaryFixed: Color(0xfff7e1a7),
      onTertiaryFixed: Color(0xff231a00),
      tertiaryFixedDim: Color(0xffdac58d),
      onTertiaryFixedVariant: Color(0xff53451a),
      surfaceDim: Color(0xffe8d6d3),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ed),
      surfaceContainer: Color(0xfffceae6),
      surfaceContainerHigh: Color(0xfff6e4e0),
      surfaceContainerHighest: Color(0xfff1dfdb),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6d2212),
      surfaceTint: Color(0xff9b4430),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff9b4430),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff6d3200),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffb05f25),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff4f4116),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff776738),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff231917),
      onSurfaceVariant: Color(0xff513f3a),
      outline: Color(0xff6f5a56),
      outlineVariant: Color(0xff8c7671),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2c),
      inversePrimary: Color(0xffffb4a4),
      primaryFixed: Color(0xffb75944),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff98412e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffb05f25),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff91480c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff847343),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff6a5b2d),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe8d6d3),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ed),
      surfaceContainer: Color(0xfffceae6),
      surfaceContainerHigh: Color(0xfff6e4e0),
      surfaceContainerHighest: Color(0xfff1dfdb),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff490800),
      surfaceTint: Color(0xff9b4430),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff772918),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3c1800),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6d3200),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2b2100),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4f4116),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff30201d),
      outline: Color(0xff513f3a),
      outlineVariant: Color(0xff513f3a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2c),
      inversePrimary: Color(0xffffe7e2),
      primaryFixed: Color(0xff772918),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff591305),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6d3200),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4c2100),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff4f4116),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff372b03),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe8d6d3),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ed),
      surfaceContainer: Color(0xfffceae6),
      surfaceContainerHigh: Color(0xfff6e4e0),
      surfaceContainerHighest: Color(0xfff1dfdb),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb4a4),
      surfaceTint: Color(0xffffb4a4),
      onPrimary: Color(0xff5e1708),
      primaryContainer: Color(0xff7b2c1b),
      onPrimaryContainer: Color(0xffffd5cc),
      secondary: Color(0xffffb689),
      onSecondary: Color(0xff512300),
      secondaryContainer: Color(0xffa8591f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xffdac58d),
      onTertiary: Color(0xff3b2f05),
      tertiaryContainer: Color(0xff6d5e30),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1a110f),
      onSurface: Color(0xfff1dfdb),
      onSurfaceVariant: Color(0xffdbc1bb),
      outline: Color(0xffa38b86),
      outlineVariant: Color(0xff55423e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfdb),
      inversePrimary: Color(0xff9b4430),
      primaryFixed: Color(0xffffdad3),
      onPrimaryFixed: Color(0xff3d0600),
      primaryFixedDim: Color(0xffffb4a4),
      onPrimaryFixedVariant: Color(0xff7c2d1c),
      secondaryFixed: Color(0xffffdbc8),
      onSecondaryFixed: Color(0xff311300),
      secondaryFixedDim: Color(0xffffb689),
      onSecondaryFixedVariant: Color(0xff733500),
      tertiaryFixed: Color(0xfff7e1a7),
      onTertiaryFixed: Color(0xff231a00),
      tertiaryFixedDim: Color(0xffdac58d),
      onTertiaryFixedVariant: Color(0xff53451a),
      surfaceDim: Color(0xff1a110f),
      surfaceBright: Color(0xff423734),
      surfaceContainerLowest: Color(0xff140c0a),
      surfaceContainerLow: Color(0xff231917),
      surfaceContainer: Color(0xff271d1b),
      surfaceContainerHigh: Color(0xff322825),
      surfaceContainerHighest: Color(0xff3d3230),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffbaab),
      surfaceTint: Color(0xffffb4a4),
      onPrimary: Color(0xff340400),
      primaryContainer: Color(0xffda745d),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffbc93),
      onSecondary: Color(0xff290f00),
      secondaryContainer: Color(0xffd27b3e),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffdec991),
      onTertiary: Color(0xff1d1500),
      tertiaryContainer: Color(0xffa18f5c),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a110f),
      onSurface: Color(0xfffff9f8),
      onSurfaceVariant: Color(0xffe0c5bf),
      outline: Color(0xffb69d98),
      outlineVariant: Color(0xff957e79),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfdb),
      inversePrimary: Color(0xff7e2e1d),
      primaryFixed: Color(0xffffdad3),
      onPrimaryFixed: Color(0xff2a0300),
      primaryFixedDim: Color(0xffffb4a4),
      onPrimaryFixedVariant: Color(0xff661d0d),
      secondaryFixed: Color(0xffffdbc8),
      onSecondaryFixed: Color(0xff210b00),
      secondaryFixedDim: Color(0xffffb689),
      onSecondaryFixedVariant: Color(0xff5a2800),
      tertiaryFixed: Color(0xfff7e1a7),
      onTertiaryFixed: Color(0xff171000),
      tertiaryFixedDim: Color(0xffdac58d),
      onTertiaryFixedVariant: Color(0xff42350a),
      surfaceDim: Color(0xff1a110f),
      surfaceBright: Color(0xff423734),
      surfaceContainerLowest: Color(0xff140c0a),
      surfaceContainerLow: Color(0xff231917),
      surfaceContainer: Color(0xff271d1b),
      surfaceContainerHigh: Color(0xff322825),
      surfaceContainerHighest: Color(0xff3d3230),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f8),
      surfaceTint: Color(0xffffb4a4),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffbaab),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffffaf8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffbc93),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffaf6),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffdec991),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a110f),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffff9f8),
      outline: Color(0xffe0c5bf),
      outlineVariant: Color(0xffe0c5bf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfdb),
      inversePrimary: Color(0xff551003),
      primaryFixed: Color(0xffffe0d9),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffbaab),
      onPrimaryFixedVariant: Color(0xff340400),
      secondaryFixed: Color(0xffffe1d0),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffbc93),
      onSecondaryFixedVariant: Color(0xff290f00),
      tertiaryFixed: Color(0xfffbe5ab),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffdec991),
      onTertiaryFixedVariant: Color(0xff1d1500),
      surfaceDim: Color(0xff1a110f),
      surfaceBright: Color(0xff423734),
      surfaceContainerLowest: Color(0xff140c0a),
      surfaceContainerLow: Color(0xff231917),
      surfaceContainer: Color(0xff271d1b),
      surfaceContainerHigh: Color(0xff322825),
      surfaceContainerHighest: Color(0xff3d3230),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
