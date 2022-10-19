part of '../tdlibjson_api.dart';

class GetThemeParametersJsonString extends TdFunction {
  /// Converts a themeParameters object to corresponding JSON-serialized string. Can be called synchronously
  const GetThemeParametersJsonString({
    required this.theme,
  });

  /// [theme] Theme parameters to convert to JSON
  final ThemeParameters theme;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "theme":"${theme.toJson()}"
}
	""";
  }

  GetThemeParametersJsonString copyWith({
    ThemeParameters? theme,
  }) =>
      GetThemeParametersJsonString(
        theme: theme ?? this.theme,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getThemeParametersJsonString';

  @override
  String getConstructor() => CONSTRUCTOR;
}
