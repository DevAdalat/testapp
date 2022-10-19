part of '../tdlibjson_api.dart';

class ToggleMessageSenderIsBlocked extends TdFunction {
  /// Changes the block state of a message sender. Currently, only users and supergroup chats can be blocked
  const ToggleMessageSenderIsBlocked({
    required this.senderId,
    required this.isBlocked,
  });

  /// [senderId] Identifier of a message sender to block/unblock
  final MessageSender senderId;

  /// [isBlocked] New value of is_blocked
  final bool isBlocked;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "sender_id":"${senderId.toJson()}",
   "is_blocked":$isBlocked
}
	""";
  }

  ToggleMessageSenderIsBlocked copyWith({
    MessageSender? senderId,
    bool? isBlocked,
  }) =>
      ToggleMessageSenderIsBlocked(
        senderId: senderId ?? this.senderId,
        isBlocked: isBlocked ?? this.isBlocked,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleMessageSenderIsBlocked';

  @override
  String getConstructor() => CONSTRUCTOR;
}
