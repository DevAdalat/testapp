part of '../tdlibjson_api.dart';

class RemoveFavoriteSticker extends TdFunction {
  /// Removes a sticker from the list of favorite stickers
  const RemoveFavoriteSticker({
    required this.sticker,
  });

  /// [sticker] Sticker file to delete from the list
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

  RemoveFavoriteSticker copyWith({
    InputFile? sticker,
  }) =>
      RemoveFavoriteSticker(
        sticker: sticker ?? this.sticker,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'removeFavoriteSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
