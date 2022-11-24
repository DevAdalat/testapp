part of '../tdlibjson_api.dart';

class GetThemedEmojiStatuses extends TdFunction {

  /// Returns up to 8 themed emoji statuses, which color must be changed to the color of the Telegram Premium badge
  const GetThemedEmojiStatuses();
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  GetThemedEmojiStatuses copyWith() => const GetThemedEmojiStatuses();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getThemedEmojiStatuses';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
