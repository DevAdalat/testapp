part of '../tdlibjson_api.dart';

class GetDefaultEmojiStatuses extends TdFunction {

  /// Returns default emoji statuses
  const GetDefaultEmojiStatuses();
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  GetDefaultEmojiStatuses copyWith() => const GetDefaultEmojiStatuses();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getDefaultEmojiStatuses';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
