part of '../tdlibjson_api.dart';

class SetStickerSetThumbnail extends TdFunction {

  /// Sets a sticker set thumbnail; for bots only. Returns the sticker set
  const SetStickerSetThumbnail({
    required this.userId,
    required this.name,
    this.thumbnail,
  });
  
  /// [userId] Sticker set owner
  final int userId;

  /// [name] Sticker set name
  final String name;

  /// [thumbnail] Thumbnail to set in PNG, TGS, or WEBM format; pass null to remove the sticker set thumbnail. Thumbnail format must match the format of stickers in the set
  final InputFile? thumbnail;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "user_id":$userId,
   "name":"$name",
   "thumbnail":${thumbnail?.toJson()}
}
	""";
  }
  
  SetStickerSetThumbnail copyWith({
    int? userId,
    String? name,
    InputFile? thumbnail,
  }) => SetStickerSetThumbnail(
    userId: userId ?? this.userId,
    name: name ?? this.name,
    thumbnail: thumbnail ?? this.thumbnail,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setStickerSetThumbnail';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
