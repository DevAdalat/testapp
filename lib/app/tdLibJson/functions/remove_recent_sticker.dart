part of '../tdlibjson_api.dart';

class RemoveRecentSticker extends TdFunction {
  /// Removes a sticker from the list of recently used stickers
  const RemoveRecentSticker({
    required this.isAttached,
    required this.sticker,
  });

  /// [isAttached] Pass true to remove the sticker from the list of stickers recently attached to photo or video files; pass false to remove the sticker from the list of recently sent stickers
  final bool isAttached;

  /// [sticker] Sticker file to delete
  final InputFile sticker;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "is_attached":$isAttached,
   "sticker":${sticker.toJson()}
}
	""";
  }

  RemoveRecentSticker copyWith({
    bool? isAttached,
    InputFile? sticker,
  }) =>
      RemoveRecentSticker(
        isAttached: isAttached ?? this.isAttached,
        sticker: sticker ?? this.sticker,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'removeRecentSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
