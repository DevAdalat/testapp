part of '../tdlibjson.dart';

class LeaveGroupCall extends TdFunction {

  /// Leaves a group call
  const LeaveGroupCall({
    required this.groupCallId,
  });
  
  /// [groupCallId] Group call identifier
  final int groupCallId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "@extra": extra,
    };
  }
  
  LeaveGroupCall copyWith({
    int? groupCallId,
  }) => LeaveGroupCall(
    groupCallId: groupCallId ?? this.groupCallId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'leaveGroupCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
