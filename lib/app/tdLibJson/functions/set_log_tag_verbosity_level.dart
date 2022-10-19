part of '../tdlibjson_api.dart';

class SetLogTagVerbosityLevel extends TdFunction {
  /// Sets the verbosity level for a specified TDLib internal log tag. Can be called synchronously
  const SetLogTagVerbosityLevel({
    required this.tag,
    required this.newVerbosityLevel,
  });

  /// [tag] Logging tag to change verbosity level
  final String tag;

  /// [newVerbosityLevel] New verbosity level; 1-1024
  final int newVerbosityLevel;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "tag":"$tag",
   "new_verbosity_level":$newVerbosityLevel
}
	""";
  }

  SetLogTagVerbosityLevel copyWith({
    String? tag,
    int? newVerbosityLevel,
  }) =>
      SetLogTagVerbosityLevel(
        tag: tag ?? this.tag,
        newVerbosityLevel: newVerbosityLevel ?? this.newVerbosityLevel,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setLogTagVerbosityLevel';

  @override
  String getConstructor() => CONSTRUCTOR;
}
