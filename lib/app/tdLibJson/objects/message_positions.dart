part of '../tdlibjson_api.dart';

class MessagePositions extends TdObject {

  /// Contains a list of message positions
  const MessagePositions({
    required this.totalCount,
    required this.positions,
    this.extra,
    this.clientId,
  });
  
  /// [totalCount] Total number of messages found 
  final int totalCount;

  /// [positions] List of message positions
  final List<MessagePosition> positions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessagePositions.fromJson(Map<String, dynamic> json) => MessagePositions(
    totalCount: json['total_count'],
    positions: List<MessagePosition>.from((json['positions'] ?? []).map((item) => MessagePosition.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "total_count":$totalCount,
   "positions":${positions.map((i) => i.toJson()).toList()}
}
	""";
  }
  
  MessagePositions copyWith({
    int? totalCount,
    List<MessagePosition>? positions,
    dynamic extra,
    int? clientId,
  }) => MessagePositions(
    totalCount: totalCount ?? this.totalCount,
    positions: positions ?? this.positions,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messagePositions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
