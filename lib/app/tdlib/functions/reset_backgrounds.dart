part of '../tdlibjson.dart';

class ResetBackgrounds extends TdFunction {

  /// Resets list of installed backgrounds to its default value
  const ResetBackgrounds();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  ResetBackgrounds copyWith() => const ResetBackgrounds();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'resetBackgrounds';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
