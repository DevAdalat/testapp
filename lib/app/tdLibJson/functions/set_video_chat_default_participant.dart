part of '../tdlibjson_api.dart';

class SetVideoChatDefaultParticipant extends TdFunction {

  /// Changes default participant identifier, on whose behalf a video chat in the chat will be joined
  const SetVideoChatDefaultParticipant({
    required this.chatId,
    required this.defaultParticipantId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [defaultParticipantId] Default group call participant identifier to join the video chats
  final MessageSender defaultParticipantId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "default_participant_id":${defaultParticipantId.toJson()}
}
	""";
  }
  
  SetVideoChatDefaultParticipant copyWith({
    int? chatId,
    MessageSender? defaultParticipantId,
  }) => SetVideoChatDefaultParticipant(
    chatId: chatId ?? this.chatId,
    defaultParticipantId: defaultParticipantId ?? this.defaultParticipantId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setVideoChatDefaultParticipant';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
