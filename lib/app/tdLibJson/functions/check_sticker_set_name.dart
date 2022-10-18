part of '../tdlibjson_api.dart';

class CheckStickerSetName extends TdFunction {

  /// Checks whether a name can be used for a new sticker set
  const CheckStickerSetName({
    required this.name,
  });
  
  /// [name] Name to be checked
  final String name;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "name": "$name"
  }
	""";
  }
  
  CheckStickerSetName copyWith({
    String? name,
  }) => CheckStickerSetName(
    name: name ?? this.name,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'checkStickerSetName';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
