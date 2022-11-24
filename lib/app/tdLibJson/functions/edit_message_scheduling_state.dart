part of '../tdlibjson_api.dart';

class EditMessageSchedulingState extends TdFunction {

  /// Edits the time when a scheduled message will be sent. Scheduling state of all messages in the same album or forwarded together with the message will be also changed
  const EditMessageSchedulingState({
    required this.chatId,
    required this.messageId,
    this.schedulingState,
  });
  
  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [schedulingState] The new message scheduling state; pass null to send the message immediately
  final MessageSchedulingState? schedulingState;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "message_id":$messageId,
   "scheduling_state":${schedulingState?.toJson()}
}
	""";
  }
  
  EditMessageSchedulingState copyWith({
    int? chatId,
    int? messageId,
    MessageSchedulingState? schedulingState,
  }) => EditMessageSchedulingState(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    schedulingState: schedulingState ?? this.schedulingState,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'editMessageSchedulingState';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
