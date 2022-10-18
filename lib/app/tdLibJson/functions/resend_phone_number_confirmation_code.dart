part of '../tdlibjson_api.dart';

class ResendPhoneNumberConfirmationCode extends TdFunction {

  /// Resends phone number confirmation code
  const ResendPhoneNumberConfirmationCode();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  ResendPhoneNumberConfirmationCode copyWith() => const ResendPhoneNumberConfirmationCode();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'resendPhoneNumberConfirmationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
