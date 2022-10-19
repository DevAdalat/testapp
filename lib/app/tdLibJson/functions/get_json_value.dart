part of '../tdlibjson_api.dart';

class GetJsonValue extends TdFunction {
  /// Converts a JSON-serialized string to corresponding JsonValue object. Can be called synchronously
  const GetJsonValue({
    required this.json,
  });

  /// [json] The JSON-serialized string
  final String json;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "json":"$json"
}
	""";
  }

  GetJsonValue copyWith({
    String? json,
  }) =>
      GetJsonValue(
        json: json ?? this.json,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getJsonValue';

  @override
  String getConstructor() => CONSTRUCTOR;
}
