part of '../tdlibjson_api.dart';

class SetBackground extends TdFunction {

  /// Changes the background selected by the user; adds background to the list of installed backgrounds
  const SetBackground({
    this.background,
    this.type,
    required this.forDarkTheme,
  });
  
  /// [background] The input background to use; pass null to create a new filled backgrounds or to remove the current background
  final InputBackground? background;

  /// [type] Background type; pass null to use the default type of the remote background or to remove the current background
  final BackgroundType? type;

  /// [forDarkTheme] Pass true if the background is changed for a dark theme
  final bool forDarkTheme;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "background":${background?.toJson()},
   "type":${type?.toJson()},
   "for_dark_theme":$forDarkTheme
}
	""";
  }
  
  SetBackground copyWith({
    InputBackground? background,
    BackgroundType? type,
    bool? forDarkTheme,
  }) => SetBackground(
    background: background ?? this.background,
    type: type ?? this.type,
    forDarkTheme: forDarkTheme ?? this.forDarkTheme,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setBackground';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
