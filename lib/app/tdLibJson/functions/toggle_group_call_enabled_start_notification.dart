part of '../tdlibjson_api.dart';

class ToggleGroupCallEnabledStartNotification extends TdFunction {
  /// Toggles whether the current user will receive a notification when the group call will start; scheduled group calls only
  const ToggleGroupCallEnabledStartNotification({
    required this.groupCallId,
    required this.enabledStartNotification,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [enabledStartNotification] New value of the enabled_start_notification setting
  final bool enabledStartNotification;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "group_call_id":$groupCallId,
   "enabled_start_notification":$enabledStartNotification
}
	""";
  }

  ToggleGroupCallEnabledStartNotification copyWith({
    int? groupCallId,
    bool? enabledStartNotification,
  }) =>
      ToggleGroupCallEnabledStartNotification(
        groupCallId: groupCallId ?? this.groupCallId,
        enabledStartNotification:
            enabledStartNotification ?? this.enabledStartNotification,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleGroupCallEnabledStartNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}
