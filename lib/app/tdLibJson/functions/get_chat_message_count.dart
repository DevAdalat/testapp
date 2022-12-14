part of '../tdlibjson_api.dart';

class GetChatMessageCount extends TdFunction {

  /// Returns approximate number of messages of the specified type in the chat
  const GetChatMessageCount({
    required this.chatId,
    required this.filter,
    required this.returnLocal,
  });
  
  /// [chatId] Identifier of the chat in which to count messages 
  final int chatId;

  /// [filter] Filter for message content; searchMessagesFilterEmpty is unsupported in this function 
  final SearchMessagesFilter filter;

  /// [returnLocal] Pass true to get the number of messages without sending network requests, or -1 if the number of messages is unknown locally
  final bool returnLocal;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "filter":${filter.toJson()},
   "return_local":$returnLocal
}
	""";
  }
  
  GetChatMessageCount copyWith({
    int? chatId,
    SearchMessagesFilter? filter,
    bool? returnLocal,
  }) => GetChatMessageCount(
    chatId: chatId ?? this.chatId,
    filter: filter ?? this.filter,
    returnLocal: returnLocal ?? this.returnLocal,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getChatMessageCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
