part of '../tdlibjson_api.dart';

class GetSavedOrderInfo extends TdFunction {

  /// Returns saved order information. Returns a 404 error if there is no saved order information
  const GetSavedOrderInfo();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  GetSavedOrderInfo copyWith() => const GetSavedOrderInfo();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getSavedOrderInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
