part of '../tdlibjson_api.dart';

class RemoveFavoriteSticker extends TdFunction {
  /// Removes a sticker from the list of favorite stickers
  const RemoveFavoriteSticker({
    required this.sticker,
  });

  /// [sticker] Sticker file to delete from the list
  final InputFile sticker;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "@extra": extra,
    };
  }

  RemoveFavoriteSticker copyWith({
    InputFile? sticker,
  }) =>
      RemoveFavoriteSticker(
        sticker: sticker ?? this.sticker,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'removeFavoriteSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
