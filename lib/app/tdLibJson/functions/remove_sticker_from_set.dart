part of '../tdlibjson_api.dart';

class RemoveStickerFromSet extends TdFunction {
  /// Removes a sticker from the set to which it belongs; for bots only. The sticker set must have been created by the bot
  const RemoveStickerFromSet({
    required this.sticker,
  });

  /// [sticker] Sticker
  final InputFile sticker;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "sticker":${sticker.toJson()}
}
	""";
  }

  RemoveStickerFromSet copyWith({
    InputFile? sticker,
  }) =>
      RemoveStickerFromSet(
        sticker: sticker ?? this.sticker,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'removeStickerFromSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
