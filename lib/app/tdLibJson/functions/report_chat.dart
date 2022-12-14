part of '../tdlibjson_api.dart';

class ReportChat extends TdFunction {

  /// Reports a chat to the Telegram moderators. A chat can be reported only from the chat action bar, or if chat.can_be_reported
  const ReportChat({
    required this.chatId,
    required this.messageIds,
    required this.reason,
    required this.text,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [messageIds] Identifiers of reported messages; may be empty to report the whole chat 
  final List<int> messageIds;

  /// [reason] The reason for reporting the chat 
  final ChatReportReason reason;

  /// [text] Additional report details; 0-1024 characters
  final String text;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "message_ids":${messageIds.map((i) => i).toList()},
   "reason":${reason.toJson()},
   "text":"$text"
}
	""";
  }
  
  ReportChat copyWith({
    int? chatId,
    List<int>? messageIds,
    ChatReportReason? reason,
    String? text,
  }) => ReportChat(
    chatId: chatId ?? this.chatId,
    messageIds: messageIds ?? this.messageIds,
    reason: reason ?? this.reason,
    text: text ?? this.text,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'reportChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
