part of '../tdlibjson_api.dart';

class ReportChatPhoto extends TdFunction {

  /// Reports a chat photo to the Telegram moderators. A chat photo can be reported only if chat.can_be_reported
  const ReportChatPhoto({
    required this.chatId,
    required this.fileId,
    required this.reason,
    required this.text,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [fileId] Identifier of the photo to report. Only full photos from chatPhoto can be reported 
  final int fileId;

  /// [reason] The reason for reporting the chat photo 
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
   "file_id":$fileId,
   "reason":${reason.toJson()},
   "text":"$text"
}
	""";
  }
  
  ReportChatPhoto copyWith({
    int? chatId,
    int? fileId,
    ChatReportReason? reason,
    String? text,
  }) => ReportChatPhoto(
    chatId: chatId ?? this.chatId,
    fileId: fileId ?? this.fileId,
    reason: reason ?? this.reason,
    text: text ?? this.text,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'reportChatPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
