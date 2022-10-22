part of '../tdlibjson_api.dart';

class GetSuitableDiscussionChats extends TdFunction {
  /// Returns a list of basic group and supergroup chats, which can be used as a discussion group for a channel. Returned basic group chats must be first upgraded to supergroups before they can be set as a discussion group. To set a returned supergroup as a discussion group, access to its old messages must be enabled using toggleSupergroupIsAllHistoryAvailable first
  const GetSuitableDiscussionChats();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  GetSuitableDiscussionChats copyWith() => const GetSuitableDiscussionChats();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getSuitableDiscussionChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
