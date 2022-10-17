part of '../tdlibjson_api.dart';

class EndGroupCallRecording extends TdFunction {
  /// Ends recording of an active group call. Requires groupCall.can_be_managed group call flag
  const EndGroupCallRecording({
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

  EndGroupCallRecording copyWith({
    int? groupCallId,
  }) =>
      EndGroupCallRecording(
        groupCallId: groupCallId ?? this.groupCallId,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'endGroupCallRecording';

  @override
  String getConstructor() => CONSTRUCTOR;
}
