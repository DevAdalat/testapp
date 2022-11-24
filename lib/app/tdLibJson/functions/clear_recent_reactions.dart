part of '../tdlibjson_api.dart';

class ClearRecentReactions extends TdFunction {

  /// Clears the list of recently used reactions
  const ClearRecentReactions();
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  ClearRecentReactions copyWith() => const ClearRecentReactions();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'clearRecentReactions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
