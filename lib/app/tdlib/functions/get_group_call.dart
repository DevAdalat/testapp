part of '../tdlibjson.dart';

class GetGroupCall extends TdFunction {

  /// Returns information about a group call
  const GetGroupCall({
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
  
  GetGroupCall copyWith({
    int? groupCallId,
  }) => GetGroupCall(
    groupCallId: groupCallId ?? this.groupCallId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getGroupCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
