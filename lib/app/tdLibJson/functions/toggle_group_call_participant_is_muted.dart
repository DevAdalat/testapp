part of '../tdlibjson_api.dart';

class ToggleGroupCallParticipantIsMuted extends TdFunction {
  /// Toggles whether a participant of an active group call is muted, unmuted, or allowed to unmute themselves
  const ToggleGroupCallParticipantIsMuted({
    required this.groupCallId,
    required this.participantId,
    required this.isMuted,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participantId] Participant identifier
  final MessageSender participantId;

  /// [isMuted] Pass true to mute the user; pass false to unmute the them
  final bool isMuted;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "participant_id": participantId.toJson(),
      "is_muted": isMuted,
      "@extra": extra,
    };
  }

  ToggleGroupCallParticipantIsMuted copyWith({
    int? groupCallId,
    MessageSender? participantId,
    bool? isMuted,
  }) =>
      ToggleGroupCallParticipantIsMuted(
        groupCallId: groupCallId ?? this.groupCallId,
        participantId: participantId ?? this.participantId,
        isMuted: isMuted ?? this.isMuted,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleGroupCallParticipantIsMuted';

  @override
  String getConstructor() => CONSTRUCTOR;
}
