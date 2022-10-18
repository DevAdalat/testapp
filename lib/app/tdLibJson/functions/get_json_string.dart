part of '../tdlibjson_api.dart';

class GetJsonString extends TdFunction {

  /// Converts a JsonValue object to corresponding JSON-serialized string. Can be called synchronously
  const GetJsonString({
    required this.jsonValue,
  });
  
  /// [jsonValue] The JsonValue object
  final JsonValue jsonValue;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "json_value": "${jsonValue.toJson()}"
  }
	""";
  }
  
  GetJsonString copyWith({
    JsonValue? jsonValue,
  }) => GetJsonString(
    jsonValue: jsonValue ?? this.jsonValue,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getJsonString';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
