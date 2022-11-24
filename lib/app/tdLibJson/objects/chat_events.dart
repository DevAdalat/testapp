part of '../tdlibjson_api.dart';

class ChatEvents extends TdObject {

  /// Contains a list of chat events
  const ChatEvents({
    required this.events,
    this.extra,
    this.clientId,
  });
  
  /// [events] List of events
  final List<ChatEvent> events;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatEvents.fromJson(Map<String, dynamic> json) => ChatEvents(
    events: List<ChatEvent>.from((json['events'] ?? []).map((item) => ChatEvent.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "events":${events.map((i) => i.toJson()).toList()}
}
	""";
  }
  
  ChatEvents copyWith({
    List<ChatEvent>? events,
    dynamic extra,
    int? clientId,
  }) => ChatEvents(
    events: events ?? this.events,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatEvents';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
