part of '../tdlibjson_api.dart';

class ReplaceVideoChatRtmpUrl extends TdFunction {

  /// Replaces the current RTMP URL for streaming to the chat; requires creator privileges
  const ReplaceVideoChatRtmpUrl({
    required this.chatId,
  });
  
  /// [chatId] Chat identifier
  final int chatId;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "chat_id": "$chatId"
  }
	""";
  }
  
  ReplaceVideoChatRtmpUrl copyWith({
    int? chatId,
  }) => ReplaceVideoChatRtmpUrl(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'replaceVideoChatRtmpUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
