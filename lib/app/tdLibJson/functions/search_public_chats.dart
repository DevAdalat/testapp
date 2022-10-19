part of '../tdlibjson_api.dart';

class SearchPublicChats extends TdFunction {
  /// Searches public chats by looking for specified query in their username and title. Currently, only private chats, supergroups and channels can be public. Returns a meaningful number of results.. Excludes private chats with contacts and chats from the chat list from the results
  const SearchPublicChats({
    required this.query,
  });

  /// [query] Query to search for
  final String query;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "query":"$query"
}
	""";
  }

  SearchPublicChats copyWith({
    String? query,
  }) =>
      SearchPublicChats(
        query: query ?? this.query,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'searchPublicChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
