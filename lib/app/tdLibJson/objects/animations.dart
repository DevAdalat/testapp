part of '../tdlibjson_api.dart';

class Animations extends TdObject {

  /// Represents a list of animations
  const Animations({
    required this.animations,
    this.extra,
    this.clientId,
  });
  
  /// [animations] List of animations
  final List<Animation> animations;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Animations.fromJson(Map<String, dynamic> json) => Animations(
    animations: List<Animation>.from((json['animations'] ?? []).map((item) => Animation.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "animations":${animations.map((i) => i.toJson()).toList()}
}
	""";
  }
  
  Animations copyWith({
    List<Animation>? animations,
    dynamic extra,
    int? clientId,
  }) => Animations(
    animations: animations ?? this.animations,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'animations';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
