part of '../tdlibjson_api.dart';

class EndGroupCall extends TdFunction {

  /// Ends a group call. Requires groupCall.can_be_managed
  const EndGroupCall({
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
  
  EndGroupCall copyWith({
    int? groupCallId,
  }) => EndGroupCall(
    groupCallId: groupCallId ?? this.groupCallId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'endGroupCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
