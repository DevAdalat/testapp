part of '../tdlibjson_api.dart';

class GetInstalledStickerSets extends TdFunction {
  /// Returns a list of installed sticker sets
  const GetInstalledStickerSets({
    required this.stickerType,
  });

  /// [stickerType] Type of the sticker sets to return
  final StickerType stickerType;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "sticker_type":${stickerType.toJson()}
}
	""";
  }

  GetInstalledStickerSets copyWith({
    StickerType? stickerType,
  }) =>
      GetInstalledStickerSets(
        stickerType: stickerType ?? this.stickerType,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
