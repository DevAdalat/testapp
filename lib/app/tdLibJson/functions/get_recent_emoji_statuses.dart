part of '../tdlibjson_api.dart';

class GetRecentEmojiStatuses extends TdFunction {

  /// Returns recent emoji statuses
  const GetRecentEmojiStatuses();
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  GetRecentEmojiStatuses copyWith() => const GetRecentEmojiStatuses();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getRecentEmojiStatuses';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
