part of '../tdlibjson_api.dart';

class TestVectorString extends TdObject {

  /// A simple object containing a vector of strings; for testing only
  const TestVectorString({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// [value] Vector of strings
  final List<String> value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory TestVectorString.fromJson(Map<String, dynamic> json) => TestVectorString(
    value: List<String>.from((json['value'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "value":${value.map((i) => i).toList()}
}
	""";
  }
  
  TestVectorString copyWith({
    List<String>? value,
    dynamic extra,
    int? clientId,
  }) => TestVectorString(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'testVectorString';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
