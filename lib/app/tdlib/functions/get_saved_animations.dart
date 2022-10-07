part of '../tdlibjson.dart';

class GetSavedAnimations extends TdFunction {

  /// Returns saved animations
  const GetSavedAnimations();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetSavedAnimations copyWith() => const GetSavedAnimations();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getSavedAnimations';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
