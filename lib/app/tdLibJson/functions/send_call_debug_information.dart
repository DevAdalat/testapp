part of '../tdlibjson_api.dart';

class SendCallDebugInformation extends TdFunction {

  /// Sends debug information for a call to Telegram servers
  const SendCallDebugInformation({
    required this.callId,
    required this.debugInformation,
  });
  
  /// [callId] Call identifier 
  final int callId;

  /// [debugInformation] Debug information in application-specific format
  final String debugInformation;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "call_id":$callId,
   "debug_information":"$debugInformation"
}
	""";
  }
  
  SendCallDebugInformation copyWith({
    int? callId,
    String? debugInformation,
  }) => SendCallDebugInformation(
    callId: callId ?? this.callId,
    debugInformation: debugInformation ?? this.debugInformation,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'sendCallDebugInformation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
