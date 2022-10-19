part of '../tdlibjson_api.dart';

class TextEntities extends TdObject {
  /// Contains a list of text entities
  const TextEntities({
    required this.entities,
    this.extra,
    this.clientId,
  });

  /// [entities] List of text entities
  final List<TextEntity> entities;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory TextEntities.fromJson(Map<String, dynamic> json) => TextEntities(
        entities: List<TextEntity>.from((json['entities'] ?? [])
            .map((item) => TextEntity.fromJson(item))
            .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "entities":"${entities.map((i) => i.toJson()).toList()}"
}
	""";
  }

  TextEntities copyWith({
    List<TextEntity>? entities,
    dynamic extra,
    int? clientId,
  }) =>
      TextEntities(
        entities: entities ?? this.entities,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'textEntities';

  @override
  String getConstructor() => CONSTRUCTOR;
}
