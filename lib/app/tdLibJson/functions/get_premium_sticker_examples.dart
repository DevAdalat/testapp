part of '../tdlibjson_api.dart';

class GetPremiumStickerExamples extends TdFunction {
  /// Returns examples of premium stickers for demonstration purposes
  const GetPremiumStickerExamples();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  GetPremiumStickerExamples copyWith() => const GetPremiumStickerExamples();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getPremiumStickerExamples';

  @override
  String getConstructor() => CONSTRUCTOR;
}
