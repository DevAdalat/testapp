part of '../tdlibjson_api.dart';

class RemoveNotification extends TdFunction {
  /// Removes an active notification from notification list. Needs to be called only if the notification is removed by the current user
  const RemoveNotification({
    required this.notificationGroupId,
    required this.notificationId,
  });

  /// [notificationGroupId] Identifier of notification group to which the notification belongs
  final int notificationGroupId;

  /// [notificationId] Identifier of removed notification
  final int notificationId;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "notification_group_id":$notificationGroupId,
   "notification_id":$notificationId
}
	""";
  }

  RemoveNotification copyWith({
    int? notificationGroupId,
    int? notificationId,
  }) =>
      RemoveNotification(
        notificationGroupId: notificationGroupId ?? this.notificationGroupId,
        notificationId: notificationId ?? this.notificationId,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'removeNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
}
