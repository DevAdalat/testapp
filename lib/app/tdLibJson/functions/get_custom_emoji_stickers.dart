part of '../tdlibjson_api.dart';

class GetCustomEmojiStickers extends TdFunction {

  /// Returns list of custom emoji stickers by their identifiers. Stickers are returned in arbitrary order. Only found stickers are returned
  const GetCustomEmojiStickers({
    required this.customEmojiIds,
  });
  
  /// [customEmojiIds] Identifiers of custom emoji stickers. At most 200 custom emoji stickers can be received simultaneously
  final List<int> customEmojiIds;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "custom_emoji_ids":${customEmojiIds.map((i) => i).toList()}
}
	""";
  }
  
  GetCustomEmojiStickers copyWith({
    List<int>? customEmojiIds,
  }) => GetCustomEmojiStickers(
    customEmojiIds: customEmojiIds ?? this.customEmojiIds,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getCustomEmojiStickers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
