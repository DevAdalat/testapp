part of '../tdlibjson_api.dart';

class AcceptCall extends TdFunction {

  /// Accepts an incoming call
  const AcceptCall({
    required this.callId,
    required this.protocol,
  });
  
  /// [callId] Call identifier 
  final int callId;

  /// [protocol] The call protocols supported by the application
  final CallProtocol protocol;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "call_id":$callId,
   "protocol":${protocol.toJson()}
}
	""";
  }
  
  AcceptCall copyWith({
    int? callId,
    CallProtocol? protocol,
  }) => AcceptCall(
    callId: callId ?? this.callId,
    protocol: protocol ?? this.protocol,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'acceptCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
