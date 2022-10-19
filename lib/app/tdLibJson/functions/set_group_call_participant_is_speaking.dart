part of '../tdlibjson_api.dart';

class SetGroupCallParticipantIsSpeaking extends TdFunction {
  /// Informs TDLib that speaking state of a participant of an active group has changed
  const SetGroupCallParticipantIsSpeaking({
    required this.groupCallId,
    required this.audioSource,
    required this.isSpeaking,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [audioSource] Group call participant's synchronization audio source identifier, or 0 for the current user
  final int audioSource;

  /// [isSpeaking] Pass true if the user is speaking
  final bool isSpeaking;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "group_call_id":$groupCallId,
   "audio_source":$audioSource,
   "is_speaking":$isSpeaking
}
	""";
  }

  SetGroupCallParticipantIsSpeaking copyWith({
    int? groupCallId,
    int? audioSource,
    bool? isSpeaking,
  }) =>
      SetGroupCallParticipantIsSpeaking(
        groupCallId: groupCallId ?? this.groupCallId,
        audioSource: audioSource ?? this.audioSource,
        isSpeaking: isSpeaking ?? this.isSpeaking,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setGroupCallParticipantIsSpeaking';

  @override
  String getConstructor() => CONSTRUCTOR;
}
