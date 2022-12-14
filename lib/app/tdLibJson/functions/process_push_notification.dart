part of '../tdlibjson_api.dart';

class ProcessPushNotification extends TdFunction {

  /// Handles a push notification. Returns error with code 406 if the push notification is not supported and connection to the server is required to fetch new data. Can be called before authorization
  const ProcessPushNotification({
    required this.payload,
  });
  
  /// [payload] JSON-encoded push notification payload with all fields sent by the server, and "google.sent_time" and "google.notification.sound" fields added
  final String payload;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "payload":"$payload"
}
	""";
  }
  
  ProcessPushNotification copyWith({
    String? payload,
  }) => ProcessPushNotification(
    payload: payload ?? this.payload,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'processPushNotification';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
