part of '../tdlibjson_api.dart';

class GetThemedEmojiStatuses extends TdFunction {
  /// Returns up to 8 themed emoji statuses, which color must be changed to the color of the Telegram Premium badge
  const GetThemedEmojiStatuses();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetThemedEmojiStatuses copyWith() => const GetThemedEmojiStatuses();

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getThemedEmojiStatuses';

  @override
  String getConstructor() => CONSTRUCTOR;
}
