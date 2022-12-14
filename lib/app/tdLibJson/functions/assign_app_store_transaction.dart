part of '../tdlibjson_api.dart';

class AssignAppStoreTransaction extends TdFunction {

  /// Informs server about a purchase through App Store. For official applications only
  const AssignAppStoreTransaction({
    required this.receipt,
    required this.purpose,
  });
  
  /// [receipt] App Store receipt 
  final String receipt;

  /// [purpose] Transaction purpose
  final StorePaymentPurpose purpose;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "receipt":"$receipt",
   "purpose":${purpose.toJson()}
}
	""";
  }
  
  AssignAppStoreTransaction copyWith({
    String? receipt,
    StorePaymentPurpose? purpose,
  }) => AssignAppStoreTransaction(
    receipt: receipt ?? this.receipt,
    purpose: purpose ?? this.purpose,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'assignAppStoreTransaction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
