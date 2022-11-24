part of '../tdlibjson_api.dart';

class GetStickerSet extends TdFunction {

  /// Returns information about a sticker set by its identifier
  const GetStickerSet({
    required this.setId,
  });
  
  /// [setId] Identifier of the sticker set
  final int setId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "set_id":$setId
}
	""";
  }
  
  GetStickerSet copyWith({
    int? setId,
  }) => GetStickerSet(
    setId: setId ?? this.setId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getStickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
