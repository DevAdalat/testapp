part of '../tdlibjson_api.dart';

class Notification extends TdObject {

  /// Contains information about a notification
  const Notification({
    required this.id,
    required this.date,
    required this.isSilent,
    required this.type,
  });
  
  /// [id] Unique persistent identifier of this notification 
  final int id;

  /// [date] Notification date
  final int date;

  /// [isSilent] True, if the notification was explicitly sent without sound
  final bool isSilent;

  /// [type] Notification type
  final NotificationType type;
  
  /// Parse from a json
  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
    id: json['id'],
    date: json['date'],
    isSilent: json['is_silent'],
    type: NotificationType.fromJson(json['type']),
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "id":$id,
   "date":$date,
   "is_silent":$isSilent,
   "type":${type.toJson()}
}
	""";
  }
  
  Notification copyWith({
    int? id,
    int? date,
    bool? isSilent,
    NotificationType? type,
  }) => Notification(
    id: id ?? this.id,
    date: date ?? this.date,
    isSilent: isSilent ?? this.isSilent,
    type: type ?? this.type,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'notification';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
