part of '../tdlibjson_api.dart';

class SearchPublicChat extends TdFunction {

  /// Searches a public chat by its username. Currently, only private chats, supergroups and channels can be public. Returns the chat if found; otherwise an error is returned
  const SearchPublicChat({
    required this.username,
  });
  
  /// [username] Username to be resolved
  final String username;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "username":"$username"
}
	""";
  }
  
  SearchPublicChat copyWith({
    String? username,
  }) => SearchPublicChat(
    username: username ?? this.username,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'searchPublicChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
