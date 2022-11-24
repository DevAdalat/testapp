part of '../tdlibjson_api.dart';

class GetMessageAddedReactions extends TdFunction {

  /// Returns reactions added for a message, along with their sender
  const GetMessageAddedReactions({
    required this.chatId,
    required this.messageId,
    this.reactionType,
    required this.offset,
    required this.limit,
  });
  
  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [reactionType] Type of the reactions to return; pass null to return all added reactions
  final ReactionType? reactionType;

  /// [offset] Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of reactions to be returned; must be positive and can't be greater than 100
  final int limit;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "message_id":$messageId,
   "reaction_type":${reactionType?.toJson()},
   "offset":"$offset",
   "limit":$limit
}
	""";
  }
  
  GetMessageAddedReactions copyWith({
    int? chatId,
    int? messageId,
    ReactionType? reactionType,
    String? offset,
    int? limit,
  }) => GetMessageAddedReactions(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    reactionType: reactionType ?? this.reactionType,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getMessageAddedReactions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
