part of '../tdlibjson_api.dart';

class Destroy extends TdFunction {

  /// Closes the TDLib instance, destroying all local data without a proper logout. The current user session will remain in the list of all active sessions. All local data will be destroyed. After the destruction completes updateAuthorizationState with authorizationStateClosed will be sent. Can be called before authorization
  const Destroy();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  Destroy copyWith() => const Destroy();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'destroy';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
