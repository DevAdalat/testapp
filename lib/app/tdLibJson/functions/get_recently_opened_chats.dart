part of '../tdlibjson_api.dart';

class GetRecentlyOpenedChats extends TdFunction {
  /// Returns recently opened chats, this is an offline request. Returns chats in the order of last opening
  const GetRecentlyOpenedChats({
    required this.limit,
  });

  /// [limit] The maximum number of chats to be returned
  final int limit;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "limit":$limit
}
	""";
  }

  GetRecentlyOpenedChats copyWith({
    int? limit,
  }) =>
      GetRecentlyOpenedChats(
        limit: limit ?? this.limit,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getRecentlyOpenedChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
