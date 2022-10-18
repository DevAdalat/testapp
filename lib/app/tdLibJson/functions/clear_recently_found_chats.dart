part of '../tdlibjson_api.dart';

class ClearRecentlyFoundChats extends TdFunction {

  /// Clears the list of recently found chats
  const ClearRecentlyFoundChats();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  ClearRecentlyFoundChats copyWith() => const ClearRecentlyFoundChats();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'clearRecentlyFoundChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
