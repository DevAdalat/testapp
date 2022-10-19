part of '../tdlibjson_api.dart';

class SetStickerPositionInSet extends TdFunction {
  /// Changes the position of a sticker in the set to which it belongs; for bots only. The sticker set must have been created by the bot
  const SetStickerPositionInSet({
    required this.sticker,
    required this.position,
  });

  /// [sticker] Sticker
  final InputFile sticker;

  /// [position] New position of the sticker in the set, 0-based
  final int position;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "sticker":"${sticker.toJson()}",
   "position":$position
}
	""";
  }

  SetStickerPositionInSet copyWith({
    InputFile? sticker,
    int? position,
  }) =>
      SetStickerPositionInSet(
        sticker: sticker ?? this.sticker,
        position: position ?? this.position,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setStickerPositionInSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
