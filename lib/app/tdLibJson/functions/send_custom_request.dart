part of '../tdlibjson_api.dart';

class SendCustomRequest extends TdFunction {

  /// Sends a custom request; for bots only
  const SendCustomRequest({
    required this.method,
    required this.parameters,
  });
  
  /// [method] The method name 
  final String method;

  /// [parameters] JSON-serialized method parameters
  final String parameters;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "method": "$method",
    "parameters": "$parameters"
  }
	""";
  }
  
  SendCustomRequest copyWith({
    String? method,
    String? parameters,
  }) => SendCustomRequest(
    method: method ?? this.method,
    parameters: parameters ?? this.parameters,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'sendCustomRequest';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
