part of '../tdlibjson_api.dart';

class ResendAuthenticationCode extends TdFunction {

  /// Resends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitCode, the next_code_type of the result is not null and the server-specified timeout has passed, or when the current authorization state is authorizationStateWaitEmailCode
  const ResendAuthenticationCode();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  ResendAuthenticationCode copyWith() => const ResendAuthenticationCode();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'resendAuthenticationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
