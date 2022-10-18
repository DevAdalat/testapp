part of '../tdlibjson_api.dart';

class Text extends TdObject {

  /// Contains some text
  const Text({
    required this.text,
    this.extra,
    this.clientId,
  });
  
  /// [text] Text
  final String text;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Text.fromJson(Map<String, dynamic> json) => Text(
    text: json['text'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "text": "$text"
  }
	""";
  }
  
  Text copyWith({
    String? text,
    dynamic extra,
    int? clientId,
  }) => Text(
    text: text ?? this.text,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'text';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
