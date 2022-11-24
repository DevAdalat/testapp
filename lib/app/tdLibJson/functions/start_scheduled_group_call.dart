part of '../tdlibjson_api.dart';

class StartScheduledGroupCall extends TdFunction {

  /// Starts a scheduled group call
  const StartScheduledGroupCall({
    required this.groupCallId,
  });
  
  /// [groupCallId] Group call identifier
  final int groupCallId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "group_call_id":$groupCallId
}
	""";
  }
  
  StartScheduledGroupCall copyWith({
    int? groupCallId,
  }) => StartScheduledGroupCall(
    groupCallId: groupCallId ?? this.groupCallId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'startScheduledGroupCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
