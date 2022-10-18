part of '../tdlibjson_api.dart';

class ResetBackgrounds extends TdFunction {

  /// Resets list of installed backgrounds to its default value
  const ResetBackgrounds();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  ResetBackgrounds copyWith() => const ResetBackgrounds();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'resetBackgrounds';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
