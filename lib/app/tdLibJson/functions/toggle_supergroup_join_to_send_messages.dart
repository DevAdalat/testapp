part of '../tdlibjson_api.dart';

class ToggleSupergroupJoinToSendMessages extends TdFunction {
  /// Toggles whether joining is mandatory to send messages to a discussion supergroup; requires can_restrict_members administrator right
  const ToggleSupergroupJoinToSendMessages({
    required this.supergroupId,
    required this.joinToSendMessages,
  });

  /// [supergroupId] Identifier of the supergroup
  final int supergroupId;

  /// [joinToSendMessages] New value of join_to_send_messages
  final bool joinToSendMessages;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "join_to_send_messages": joinToSendMessages,
      "@extra": extra,
    };
  }

  ToggleSupergroupJoinToSendMessages copyWith({
    int? supergroupId,
    bool? joinToSendMessages,
  }) =>
      ToggleSupergroupJoinToSendMessages(
        supergroupId: supergroupId ?? this.supergroupId,
        joinToSendMessages: joinToSendMessages ?? this.joinToSendMessages,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleSupergroupJoinToSendMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
