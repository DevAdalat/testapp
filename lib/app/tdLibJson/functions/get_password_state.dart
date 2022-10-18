part of '../tdlibjson_api.dart';

class GetPasswordState extends TdFunction {

  /// Returns the current state of 2-step verification
  const GetPasswordState();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  GetPasswordState copyWith() => const GetPasswordState();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getPasswordState';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
