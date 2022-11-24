part of '../tdlibjson_api.dart';

class GetPushReceiverId extends TdFunction {

  /// Returns a globally unique push notification subscription identifier for identification of an account, which has received a push notification. Can be called synchronously
  const GetPushReceiverId({
    required this.payload,
  });
  
  /// [payload] JSON-encoded push notification payload
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
  
  GetPushReceiverId copyWith({
    String? payload,
  }) => GetPushReceiverId(
    payload: payload ?? this.payload,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getPushReceiverId';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
