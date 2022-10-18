part of '../tdlibjson_api.dart';

class GetApplicationConfig extends TdFunction {

  /// Returns application config, provided by the server. Can be called before authorization
  const GetApplicationConfig();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  GetApplicationConfig copyWith() => const GetApplicationConfig();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getApplicationConfig';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
