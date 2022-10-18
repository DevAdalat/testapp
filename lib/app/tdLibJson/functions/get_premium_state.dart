part of '../tdlibjson_api.dart';

class GetPremiumState extends TdFunction {

  /// Returns state of Telegram Premium subscription and promotion videos for Premium features
  const GetPremiumState();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  GetPremiumState copyWith() => const GetPremiumState();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getPremiumState';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
