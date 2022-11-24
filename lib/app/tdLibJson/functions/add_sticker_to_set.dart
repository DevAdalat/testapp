part of '../tdlibjson_api.dart';

class AddStickerToSet extends TdFunction {

  /// Adds a new sticker to a set; for bots only. Returns the sticker set
  const AddStickerToSet({
    required this.userId,
    required this.name,
    required this.sticker,
  });
  
  /// [userId] Sticker set owner
  final int userId;

  /// [name] Sticker set name 
  final String name;

  /// [sticker] Sticker to add to the set
  final InputSticker sticker;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "user_id":$userId,
   "name":"$name",
   "sticker":${sticker.toJson()}
}
	""";
  }
  
  AddStickerToSet copyWith({
    int? userId,
    String? name,
    InputSticker? sticker,
  }) => AddStickerToSet(
    userId: userId ?? this.userId,
    name: name ?? this.name,
    sticker: sticker ?? this.sticker,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'addStickerToSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
