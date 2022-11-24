part of '../tdlibjson_api.dart';

class RemoveSavedNotificationSound extends TdFunction {

  /// Removes a notification sound from the list of saved notification sounds
  const RemoveSavedNotificationSound({
    required this.notificationSoundId,
  });
  
  /// [notificationSoundId] Identifier of the notification sound
  final int notificationSoundId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "notification_sound_id":$notificationSoundId
}
	""";
  }
  
  RemoveSavedNotificationSound copyWith({
    int? notificationSoundId,
  }) => RemoveSavedNotificationSound(
    notificationSoundId: notificationSoundId ?? this.notificationSoundId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'removeSavedNotificationSound';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
