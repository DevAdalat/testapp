part of '../tdlibjson.dart';

class CanPurchasePremium extends TdFunction {

  /// Checks whether Telegram Premium purchase is possible. Must be called before in-store Premium purchase
  const CanPurchasePremium({
    required this.purpose,
  });
  
  /// [purpose] Transaction purpose
  final StorePaymentPurpose purpose;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "purpose": purpose.toJson(),
      "@extra": extra,
    };
  }
  
  CanPurchasePremium copyWith({
    StorePaymentPurpose? purpose,
  }) => CanPurchasePremium(
    purpose: purpose ?? this.purpose,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'canPurchasePremium';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
