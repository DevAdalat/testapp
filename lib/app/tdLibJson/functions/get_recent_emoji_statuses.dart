part of '../tdlibjson_api.dart';

class GetRecentEmojiStatuses extends TdFunction {
  /// Returns recent emoji statuses
  const GetRecentEmojiStatuses();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetRecentEmojiStatuses copyWith() => const GetRecentEmojiStatuses();

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getRecentEmojiStatuses';

  @override
  String getConstructor() => CONSTRUCTOR;
}
