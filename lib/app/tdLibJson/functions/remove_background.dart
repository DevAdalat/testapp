part of '../tdlibjson_api.dart';

class RemoveBackground extends TdFunction {

  /// Removes background from the list of installed backgrounds
  const RemoveBackground({
    required this.backgroundId,
  });
  
  /// [backgroundId] The background identifier
  final int backgroundId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "background_id":$backgroundId
}
	""";
  }
  
  RemoveBackground copyWith({
    int? backgroundId,
  }) => RemoveBackground(
    backgroundId: backgroundId ?? this.backgroundId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'removeBackground';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
