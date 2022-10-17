part of '../tdlibjson_api.dart';

class GetEmojiSuggestionsUrl extends TdFunction {
  /// Returns an HTTP URL which can be used to automatically log in to the translation platform and suggest new emoji replacements. The URL will be valid for 30 seconds after generation
  const GetEmojiSuggestionsUrl({
    required this.languageCode,
  });

  /// [languageCode] Language code for which the emoji replacements will be suggested
  final String languageCode;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "language_code": languageCode,
      "@extra": extra,
    };
  }

  GetEmojiSuggestionsUrl copyWith({
    String? languageCode,
  }) =>
      GetEmojiSuggestionsUrl(
        languageCode: languageCode ?? this.languageCode,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getEmojiSuggestionsUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
