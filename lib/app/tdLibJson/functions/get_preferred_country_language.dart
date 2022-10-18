part of '../tdlibjson_api.dart';

class GetPreferredCountryLanguage extends TdFunction {

  /// Returns an IETF language tag of the language preferred in the country, which must be used to fill native fields in Telegram Passport personal details. Returns a 404 error if unknown
  const GetPreferredCountryLanguage({
    required this.countryCode,
  });
  
  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code
  final String countryCode;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "country_code": "$countryCode"
  }
	""";
  }
  
  GetPreferredCountryLanguage copyWith({
    String? countryCode,
  }) => GetPreferredCountryLanguage(
    countryCode: countryCode ?? this.countryCode,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getPreferredCountryLanguage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
