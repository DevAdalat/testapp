part of '../tdlibjson_api.dart';

class FormattedText extends TdObject {

  /// A text with some entities
  const FormattedText({
    required this.text,
    required this.entities,
    this.extra,
    this.clientId,
  });
  
  /// [text] The text 
  final String text;

  /// [entities] Entities contained in the text. Entities can be nested, but must not mutually intersect with each other.. Pre, Code and PreCode entities can't contain other entities. Bold, Italic, Underline, Strikethrough, and Spoiler entities can contain and can be part of any other entities. All other entities can't contain each other
  final List<TextEntity> entities;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory FormattedText.fromJson(Map<String, dynamic> json) => FormattedText(
    text: json['text'],
    entities: List<TextEntity>.from((json['entities'] ?? []).map((item) => TextEntity.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "text":"$text",
   "entities":${entities.map((i) => i.toJson()).toList()}
}
	""";
  }
  
  FormattedText copyWith({
    String? text,
    List<TextEntity>? entities,
    dynamic extra,
    int? clientId,
  }) => FormattedText(
    text: text ?? this.text,
    entities: entities ?? this.entities,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'formattedText';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
