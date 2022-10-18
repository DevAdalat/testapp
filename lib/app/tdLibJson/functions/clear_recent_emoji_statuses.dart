part of '../tdlibjson_api.dart';

class ClearRecentEmojiStatuses extends TdFunction {

  /// Clears the list of recently used emoji statuses
  const ClearRecentEmojiStatuses();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  ClearRecentEmojiStatuses copyWith() => const ClearRecentEmojiStatuses();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'clearRecentEmojiStatuses';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
