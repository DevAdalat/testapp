part of '../tdlibjson.dart';

class GetVideoChatRtmpUrl extends TdFunction {

  /// Returns RTMP URL for streaming to the chat; requires creator privileges
  const GetVideoChatRtmpUrl({
    required this.chatId,
  });
  
  /// [chatId] Chat identifier
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  GetVideoChatRtmpUrl copyWith({
    int? chatId,
  }) => GetVideoChatRtmpUrl(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getVideoChatRtmpUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
