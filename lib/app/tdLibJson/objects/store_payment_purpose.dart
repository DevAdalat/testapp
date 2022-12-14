part of '../tdlibjson_api.dart';

class StorePaymentPurpose extends TdObject {

  /// Describes a purpose of an in-store payment
  const StorePaymentPurpose();
  
  /// a StorePaymentPurpose return type can be :
  /// * [StorePaymentPurposePremiumSubscription]
  /// * [StorePaymentPurposeGiftedPremium]
  factory StorePaymentPurpose.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case StorePaymentPurposePremiumSubscription.CONSTRUCTOR:
        return StorePaymentPurposePremiumSubscription.fromJson(json);
      case StorePaymentPurposeGiftedPremium.CONSTRUCTOR:
        return StorePaymentPurposeGiftedPremium.fromJson(json);
      default:
        return const StorePaymentPurpose();
    }
  }
  
  @override
  String toJson() {
	return 
	"""
  {
  
}
	""";
  }
  
  StorePaymentPurpose copyWith() => const StorePaymentPurpose();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'storePaymentPurpose';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StorePaymentPurposePremiumSubscription extends StorePaymentPurpose {

  /// The user subscribed to Telegram Premium
  const StorePaymentPurposePremiumSubscription({
    required this.isRestore,
  });
  
  /// [isRestore] Pass true if this is a restore of a Telegram Premium purchase; only for App Store
  final bool isRestore;
  
  /// Parse from a json
  factory StorePaymentPurposePremiumSubscription.fromJson(Map<String, dynamic> json) => StorePaymentPurposePremiumSubscription(
    isRestore: json['is_restore'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "is_restore":$isRestore
}
	""";
  }
  
  @override
  StorePaymentPurposePremiumSubscription copyWith({
    bool? isRestore,
  }) => StorePaymentPurposePremiumSubscription(
    isRestore: isRestore ?? this.isRestore,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'storePaymentPurposePremiumSubscription';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StorePaymentPurposeGiftedPremium extends StorePaymentPurpose {

  /// The user gifted Telegram Premium to another user
  const StorePaymentPurposeGiftedPremium({
    required this.userId,
    required this.currency,
    required this.amount,
  });
  
  /// [userId] Identifier of the user for which Premium was gifted 
  final int userId;

  /// [currency] ISO 4217 currency code of the payment currency 
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;
  
  /// Parse from a json
  factory StorePaymentPurposeGiftedPremium.fromJson(Map<String, dynamic> json) => StorePaymentPurposeGiftedPremium(
    userId: json['user_id'],
    currency: json['currency'],
    amount: json['amount'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "user_id":$userId,
   "currency":"$currency",
   "amount":$amount
}
	""";
  }
  
  @override
  StorePaymentPurposeGiftedPremium copyWith({
    int? userId,
    String? currency,
    int? amount,
  }) => StorePaymentPurposeGiftedPremium(
    userId: userId ?? this.userId,
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'storePaymentPurposeGiftedPremium';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
