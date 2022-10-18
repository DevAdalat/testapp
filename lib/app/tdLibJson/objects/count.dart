part of '../tdlibjson_api.dart';

class Count extends TdObject {

  /// Contains a counter
  const Count({
    required this.count,
    this.extra,
    this.clientId,
  });
  
  /// [count] Count
  final int count;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Count.fromJson(Map<String, dynamic> json) => Count(
    count: json['count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "count": "$count"
  }
	""";
  }
  
  Count copyWith({
    int? count,
    dynamic extra,
    int? clientId,
  }) => Count(
    count: count ?? this.count,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'count';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
