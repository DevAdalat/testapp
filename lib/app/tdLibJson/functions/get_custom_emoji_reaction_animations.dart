part of '../tdlibjson_api.dart';

class GetCustomEmojiReactionAnimations extends TdFunction {
  /// Returns TGS stickers with generic animations for custom emoji reactions
  const GetCustomEmojiReactionAnimations();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetCustomEmojiReactionAnimations copyWith() =>
      const GetCustomEmojiReactionAnimations();

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getCustomEmojiReactionAnimations';

  @override
  String getConstructor() => CONSTRUCTOR;
}
