part of '../tdlibjson_api.dart';

class GetLanguagePackInfo extends TdFunction {
  /// Returns information about a language pack. Returned language pack identifier may be different from a provided one. Can be called before authorization
  const GetLanguagePackInfo({
    required this.languagePackId,
  });

  /// [languagePackId] Language pack identifier
  final String languagePackId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": languagePackId,
      "@extra": extra,
    };
  }

  GetLanguagePackInfo copyWith({
    String? languagePackId,
  }) =>
      GetLanguagePackInfo(
        languagePackId: languagePackId ?? this.languagePackId,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getLanguagePackInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
