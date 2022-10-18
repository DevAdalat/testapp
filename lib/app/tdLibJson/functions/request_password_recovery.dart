part of '../tdlibjson_api.dart';

class RequestPasswordRecovery extends TdFunction {

  /// Requests to send a 2-step verification password recovery code to an email address that was previously set up
  const RequestPasswordRecovery();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  RequestPasswordRecovery copyWith() => const RequestPasswordRecovery();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'requestPasswordRecovery';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
