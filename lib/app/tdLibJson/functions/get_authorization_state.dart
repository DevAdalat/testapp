part of '../tdlibjson_api.dart';

class GetAuthorizationState extends TdFunction {

  /// Returns the current authorization state; this is an offline request. For informational purposes only. Use updateAuthorizationState instead to maintain the current authorization state. Can be called before initialization
  const GetAuthorizationState();
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  GetAuthorizationState copyWith() => const GetAuthorizationState();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getAuthorizationState';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
