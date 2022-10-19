part of '../tdlibjson_api.dart';

class GetVideoChatRtmpUrl extends TdFunction {
  /// Returns RTMP URL for streaming to the chat; requires creator privileges
  const GetVideoChatRtmpUrl({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId
}
	""";
  }

  GetVideoChatRtmpUrl copyWith({
    int? chatId,
  }) =>
      GetVideoChatRtmpUrl(
        chatId: chatId ?? this.chatId,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getVideoChatRtmpUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
