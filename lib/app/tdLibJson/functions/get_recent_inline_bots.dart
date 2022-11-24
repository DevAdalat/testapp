part of '../tdlibjson_api.dart';

class GetRecentInlineBots extends TdFunction {

  /// Returns up to 20 recently used inline bots in the order of their last usage
  const GetRecentInlineBots();
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  GetRecentInlineBots copyWith() => const GetRecentInlineBots();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getRecentInlineBots';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
