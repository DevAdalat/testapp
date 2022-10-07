part of '../tdlibjson.dart';

class GetPremiumStickerExamples extends TdFunction {

  /// Returns examples of premium stickers for demonstration purposes
  const GetPremiumStickerExamples();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetPremiumStickerExamples copyWith() => const GetPremiumStickerExamples();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getPremiumStickerExamples';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
