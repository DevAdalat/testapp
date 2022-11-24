part of '../tdlibjson_api.dart';

class GetForumTopicDefaultIcons extends TdFunction {

  /// Returns list of custom emojis, which can be used as forum topic icon by all users
  const GetForumTopicDefaultIcons();
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  GetForumTopicDefaultIcons copyWith() => const GetForumTopicDefaultIcons();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getForumTopicDefaultIcons';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
