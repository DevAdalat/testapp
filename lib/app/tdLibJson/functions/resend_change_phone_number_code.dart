part of '../tdlibjson_api.dart';

class ResendChangePhoneNumberCode extends TdFunction {

  /// Resends the authentication code sent to confirm a new phone number for the current user. Works only if the previously received authenticationCodeInfo next_code_type was not null and the server-specified timeout has passed
  const ResendChangePhoneNumberCode();
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  ResendChangePhoneNumberCode copyWith() => const ResendChangePhoneNumberCode();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'resendChangePhoneNumberCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
