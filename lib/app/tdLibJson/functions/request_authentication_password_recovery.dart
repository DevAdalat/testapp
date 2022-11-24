part of '../tdlibjson_api.dart';

class RequestAuthenticationPasswordRecovery extends TdFunction {

  /// Requests to send a 2-step verification password recovery code to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword
  const RequestAuthenticationPasswordRecovery();
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  RequestAuthenticationPasswordRecovery copyWith() => const RequestAuthenticationPasswordRecovery();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'requestAuthenticationPasswordRecovery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
