part of '../tdlibjson_api.dart';

class RemoveNotificationGroup extends TdFunction {

  /// Removes a group of active notifications. Needs to be called only if the notification group is removed by the current user
  const RemoveNotificationGroup({
    required this.notificationGroupId,
    required this.maxNotificationId,
  });
  
  /// [notificationGroupId] Notification group identifier 
  final int notificationGroupId;

  /// [maxNotificationId] The maximum identifier of removed notifications
  final int maxNotificationId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "notification_group_id":$notificationGroupId,
   "max_notification_id":$maxNotificationId
}
	""";
  }
  
  RemoveNotificationGroup copyWith({
    int? notificationGroupId,
    int? maxNotificationId,
  }) => RemoveNotificationGroup(
    notificationGroupId: notificationGroupId ?? this.notificationGroupId,
    maxNotificationId: maxNotificationId ?? this.maxNotificationId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'removeNotificationGroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
