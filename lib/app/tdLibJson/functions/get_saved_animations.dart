part of '../tdlibjson_api.dart';

class GetSavedAnimations extends TdFunction {

  /// Returns saved animations
  const GetSavedAnimations();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  GetSavedAnimations copyWith() => const GetSavedAnimations();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getSavedAnimations';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
