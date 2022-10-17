part of '../tdlibjson_api.dart';

class GetFavoriteStickers extends TdFunction {
  /// Returns favorite stickers
  const GetFavoriteStickers();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetFavoriteStickers copyWith() => const GetFavoriteStickers();

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getFavoriteStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
