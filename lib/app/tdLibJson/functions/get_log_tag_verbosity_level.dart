part of '../tdlibjson_api.dart';

class GetLogTagVerbosityLevel extends TdFunction {

  /// Returns current verbosity level for a specified TDLib internal log tag. Can be called synchronously
  const GetLogTagVerbosityLevel({
    required this.tag,
  });
  
  /// [tag] Logging tag to change verbosity level
  final String tag;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "tag": "$tag"
  }
	""";
  }
  
  GetLogTagVerbosityLevel copyWith({
    String? tag,
  }) => GetLogTagVerbosityLevel(
    tag: tag ?? this.tag,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getLogTagVerbosityLevel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
