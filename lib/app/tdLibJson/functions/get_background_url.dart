part of '../tdlibjson_api.dart';

class GetBackgroundUrl extends TdFunction {

  /// Constructs a persistent HTTP URL for a background
  const GetBackgroundUrl({
    required this.name,
    required this.type,
  });
  
  /// [name] Background name 
  final String name;

  /// [type] Background type
  final BackgroundType type;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "name": "$name",
    "type": "${type.toJson()}"
  }
	""";
  }
  
  GetBackgroundUrl copyWith({
    String? name,
    BackgroundType? type,
  }) => GetBackgroundUrl(
    name: name ?? this.name,
    type: type ?? this.type,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getBackgroundUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
