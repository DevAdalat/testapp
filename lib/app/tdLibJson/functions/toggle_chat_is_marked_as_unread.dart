part of '../tdlibjson_api.dart';

class ToggleChatIsMarkedAsUnread extends TdFunction {

  /// Changes the marked as unread state of a chat
  const ToggleChatIsMarkedAsUnread({
    required this.chatId,
    required this.isMarkedAsUnread,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [isMarkedAsUnread] New value of is_marked_as_unread
  final bool isMarkedAsUnread;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "chat_id": "$chatId",
    "is_marked_as_unread": $isMarkedAsUnread
  }
	""";
  }
  
  ToggleChatIsMarkedAsUnread copyWith({
    int? chatId,
    bool? isMarkedAsUnread,
  }) => ToggleChatIsMarkedAsUnread(
    chatId: chatId ?? this.chatId,
    isMarkedAsUnread: isMarkedAsUnread ?? this.isMarkedAsUnread,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleChatIsMarkedAsUnread';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
