part of '../tdlibjson_api.dart';

class AddFavoriteSticker extends TdFunction {
  /// Adds a new sticker to the list of favorite stickers. The new sticker is added to the top of the list. If the sticker was already in the list, it is removed from the list first. Only stickers belonging to a sticker set can be added to this list. Emoji stickers can't be added to favorite stickers
  const AddFavoriteSticker({
    required this.sticker,
  });

  /// [sticker] Sticker file to add
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

  AddFavoriteSticker copyWith({
    InputFile? sticker,
  }) =>
      AddFavoriteSticker(
        sticker: sticker ?? this.sticker,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'addFavoriteSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
