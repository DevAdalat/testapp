part of '../tdlibjson_api.dart';

class ToggleAllDownloadsArePaused extends TdFunction {
  /// Changes pause state of all files in the file download list
  const ToggleAllDownloadsArePaused({
    required this.arePaused,
  });

  /// [arePaused] Pass true to pause all downloads; pass false to unpause them
  final bool arePaused;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "are_paused":$arePaused
}
	""";
  }

  ToggleAllDownloadsArePaused copyWith({
    bool? arePaused,
  }) =>
      ToggleAllDownloadsArePaused(
        arePaused: arePaused ?? this.arePaused,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleAllDownloadsArePaused';

  @override
  String getConstructor() => CONSTRUCTOR;
}
