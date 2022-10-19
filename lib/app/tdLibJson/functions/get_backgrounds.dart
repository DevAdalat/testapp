part of '../tdlibjson_api.dart';

class GetBackgrounds extends TdFunction {
  /// Returns backgrounds installed by the user
  const GetBackgrounds({
    required this.forDarkTheme,
  });

  /// [forDarkTheme] Pass true to order returned backgrounds for a dark theme
  final bool forDarkTheme;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "for_dark_theme":$forDarkTheme
}
	""";
  }

  GetBackgrounds copyWith({
    bool? forDarkTheme,
  }) =>
      GetBackgrounds(
        forDarkTheme: forDarkTheme ?? this.forDarkTheme,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getBackgrounds';

  @override
  String getConstructor() => CONSTRUCTOR;
}
