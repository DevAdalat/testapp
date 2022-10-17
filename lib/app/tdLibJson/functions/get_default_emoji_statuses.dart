part of '../tdlibjson_api.dart';

class GetDefaultEmojiStatuses extends TdFunction {
  /// Returns default emoji statuses
  const GetDefaultEmojiStatuses();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetDefaultEmojiStatuses copyWith() => const GetDefaultEmojiStatuses();

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getDefaultEmojiStatuses';

  @override
  String getConstructor() => CONSTRUCTOR;
}
