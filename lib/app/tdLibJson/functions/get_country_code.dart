part of '../tdlibjson_api.dart';

class GetCountryCode extends TdFunction {

  /// Uses the current IP address to find the current country. Returns two-letter ISO 3166-1 alpha-2 country code. Can be called before authorization
  const GetCountryCode();
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  GetCountryCode copyWith() => const GetCountryCode();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getCountryCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
