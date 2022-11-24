part of '../tdlibjson_api.dart';

class ResendEmailAddressVerificationCode extends TdFunction {

  /// Resends the code to verify an email address to be added to a user's Telegram Passport
  const ResendEmailAddressVerificationCode();
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  ResendEmailAddressVerificationCode copyWith() => const ResendEmailAddressVerificationCode();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'resendEmailAddressVerificationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
