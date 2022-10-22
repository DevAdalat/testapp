part of '../tdlibjson_api.dart';

class GetCustomEmojiReactionAnimations extends TdFunction {
  /// Returns TGS stickers with generic animations for custom emoji reactions
  const GetCustomEmojiReactionAnimations();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  GetCustomEmojiReactionAnimations copyWith() =>
      const GetCustomEmojiReactionAnimations();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getCustomEmojiReactionAnimations';

  @override
  String getConstructor() => CONSTRUCTOR;
}
