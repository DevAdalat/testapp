part of '../tdlibjson_api.dart';

class RevokeGroupCallInviteLink extends TdFunction {

  /// Revokes invite link for a group call. Requires groupCall.can_be_managed group call flag
  const RevokeGroupCallInviteLink({
    required this.groupCallId,
  });
  
  /// [groupCallId] Group call identifier
  final int groupCallId;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "group_call_id": "$groupCallId"
  }
	""";
  }
  
  RevokeGroupCallInviteLink copyWith({
    int? groupCallId,
  }) => RevokeGroupCallInviteLink(
    groupCallId: groupCallId ?? this.groupCallId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'revokeGroupCallInviteLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
