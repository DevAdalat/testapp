part of '../tdlibjson_api.dart';

class StickerFormat extends TdObject {
  /// Describes format of a sticker
  const StickerFormat();

  /// a StickerFormat return type can be :
  /// * [StickerFormatWebp]
  /// * [StickerFormatTgs]
  /// * [StickerFormatWebm]
  factory StickerFormat.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case StickerFormatWebp.CONSTRUCTOR:
        return StickerFormatWebp.fromJson(json);
      case StickerFormatTgs.CONSTRUCTOR:
        return StickerFormatTgs.fromJson(json);
      case StickerFormatWebm.CONSTRUCTOR:
        return StickerFormatWebm.fromJson(json);
      default:
        return const StickerFormat();
    }
  }

  @override
  String toJson() {
    return """
  {
  
}
	""";
  }

  StickerFormat copyWith() => const StickerFormat();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'stickerFormat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StickerFormatWebp extends StickerFormat {
  /// The sticker is an image in WEBP format
  const StickerFormatWebp();

  /// Parse from a json
  factory StickerFormatWebp.fromJson(Map<String, dynamic> json) =>
      const StickerFormatWebp();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  @override
  StickerFormatWebp copyWith() => const StickerFormatWebp();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'stickerFormatWebp';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StickerFormatTgs extends StickerFormat {
  /// The sticker is an animation in TGS format
  const StickerFormatTgs();

  /// Parse from a json
  factory StickerFormatTgs.fromJson(Map<String, dynamic> json) =>
      const StickerFormatTgs();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  @override
  StickerFormatTgs copyWith() => const StickerFormatTgs();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'stickerFormatTgs';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StickerFormatWebm extends StickerFormat {
  /// The sticker is a video in WEBM format
  const StickerFormatWebm();

  /// Parse from a json
  factory StickerFormatWebm.fromJson(Map<String, dynamic> json) =>
      const StickerFormatWebm();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  @override
  StickerFormatWebm copyWith() => const StickerFormatWebm();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'stickerFormatWebm';

  @override
  String getConstructor() => CONSTRUCTOR;
}
