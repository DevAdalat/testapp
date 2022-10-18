part of '../tdlibjson_api.dart';

class GetActiveLiveLocationMessages extends TdFunction {

  /// Returns all active live locations that need to be updated by the application. The list is persistent across application restarts only if the message database is used
  const GetActiveLiveLocationMessages();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  GetActiveLiveLocationMessages copyWith() => const GetActiveLiveLocationMessages();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getActiveLiveLocationMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
