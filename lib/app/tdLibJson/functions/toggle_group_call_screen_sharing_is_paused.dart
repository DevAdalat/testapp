part of '../tdlibjson_api.dart';

class ToggleGroupCallScreenSharingIsPaused extends TdFunction {
  /// Pauses or unpauses screen sharing in a joined group call
  const ToggleGroupCallScreenSharingIsPaused({
    required this.groupCallId,
    required this.isPaused,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [isPaused] True if screen sharing is paused
  final bool isPaused;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "group_call_id":$groupCallId,
   "is_paused":$isPaused
}
	""";
  }

  ToggleGroupCallScreenSharingIsPaused copyWith({
    int? groupCallId,
    bool? isPaused,
  }) =>
      ToggleGroupCallScreenSharingIsPaused(
        groupCallId: groupCallId ?? this.groupCallId,
        isPaused: isPaused ?? this.isPaused,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleGroupCallScreenSharingIsPaused';

  @override
  String getConstructor() => CONSTRUCTOR;
}
