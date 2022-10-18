part of '../tdlibjson_api.dart';

class ResendPhoneNumberVerificationCode extends TdFunction {

  /// Resends the code to verify a phone number to be added to a user's Telegram Passport
  const ResendPhoneNumberVerificationCode();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  ResendPhoneNumberVerificationCode copyWith() => const ResendPhoneNumberVerificationCode();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'resendPhoneNumberVerificationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
