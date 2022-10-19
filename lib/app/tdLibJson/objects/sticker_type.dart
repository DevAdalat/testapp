part of '../tdlibjson_api.dart';

class StickerType extends TdObject {
  /// Describes type of a sticker
  const StickerType();

  /// a StickerType return type can be :
  /// * [StickerTypeRegular]
  /// * [StickerTypeMask]
  /// * [StickerTypeCustomEmoji]
  factory StickerType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case StickerTypeRegular.CONSTRUCTOR:
        return StickerTypeRegular.fromJson(json);
      case StickerTypeMask.CONSTRUCTOR:
        return StickerTypeMask.fromJson(json);
      case StickerTypeCustomEmoji.CONSTRUCTOR:
        return StickerTypeCustomEmoji.fromJson(json);
      default:
        return const StickerType();
    }
  }

  @override
  String toJson() {
    return """
  {
  
}
	""";
  }

  StickerType copyWith() => const StickerType();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'stickerType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StickerTypeRegular extends StickerType {
  /// The sticker is a regular sticker
  const StickerTypeRegular();

  /// Parse from a json
  factory StickerTypeRegular.fromJson(Map<String, dynamic> json) =>
      const StickerTypeRegular();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  StickerTypeRegular copyWith() => const StickerTypeRegular();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'stickerTypeRegular';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StickerTypeMask extends StickerType {
  /// The sticker is a mask in WEBP format to be placed on photos or videos
  const StickerTypeMask();

  /// Parse from a json
  factory StickerTypeMask.fromJson(Map<String, dynamic> json) =>
      const StickerTypeMask();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  StickerTypeMask copyWith() => const StickerTypeMask();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'stickerTypeMask';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StickerTypeCustomEmoji extends StickerType {
  /// The sticker is a custom emoji to be used inside message text and caption
  const StickerTypeCustomEmoji();

  /// Parse from a json
  factory StickerTypeCustomEmoji.fromJson(Map<String, dynamic> json) =>
      const StickerTypeCustomEmoji();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  StickerTypeCustomEmoji copyWith() => const StickerTypeCustomEmoji();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'stickerTypeCustomEmoji';

  @override
  String getConstructor() => CONSTRUCTOR;
}
