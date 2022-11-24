part of '../tdlibjson_api.dart';

class ResendRecoveryEmailAddressCode extends TdFunction {

  /// Resends the 2-step verification recovery email address verification code
  const ResendRecoveryEmailAddressCode();
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  ResendRecoveryEmailAddressCode copyWith() => const ResendRecoveryEmailAddressCode();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'resendRecoveryEmailAddressCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
