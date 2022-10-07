part of '../tdlibjson.dart';

class GetPremiumState extends TdFunction {

  /// Returns state of Telegram Premium subscription and promotion videos for Premium features
  const GetPremiumState();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetPremiumState copyWith() => const GetPremiumState();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getPremiumState';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
