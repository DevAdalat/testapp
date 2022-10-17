part of '../tdlibjson_api.dart';

class ClickPremiumSubscriptionButton extends TdFunction {
  /// Informs TDLib that the user clicked Premium subscription button on the Premium features screen
  const ClickPremiumSubscriptionButton();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  ClickPremiumSubscriptionButton copyWith() =>
      const ClickPremiumSubscriptionButton();

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'clickPremiumSubscriptionButton';

  @override
  String getConstructor() => CONSTRUCTOR;
}
