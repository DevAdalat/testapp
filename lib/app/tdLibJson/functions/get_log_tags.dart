part of '../tdlibjson_api.dart';

class GetLogTags extends TdFunction {

  /// Returns list of available TDLib internal log tags, for example,
  const GetLogTags();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  GetLogTags copyWith() => const GetLogTags();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getLogTags';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
