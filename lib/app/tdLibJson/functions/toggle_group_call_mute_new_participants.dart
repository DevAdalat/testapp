part of '../tdlibjson_api.dart';

class ToggleGroupCallMuteNewParticipants extends TdFunction {

  /// Toggles whether new participants of a group call can be unmuted only by administrators of the group call. Requires groupCall.can_toggle_mute_new_participants group call flag
  const ToggleGroupCallMuteNewParticipants({
    required this.groupCallId,
    required this.muteNewParticipants,
  });
  
  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [muteNewParticipants] New value of the mute_new_participants setting
  final bool muteNewParticipants;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "group_call_id":$groupCallId,
   "mute_new_participants":$muteNewParticipants
}
	""";
  }
  
  ToggleGroupCallMuteNewParticipants copyWith({
    int? groupCallId,
    bool? muteNewParticipants,
  }) => ToggleGroupCallMuteNewParticipants(
    groupCallId: groupCallId ?? this.groupCallId,
    muteNewParticipants: muteNewParticipants ?? this.muteNewParticipants,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleGroupCallMuteNewParticipants';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
