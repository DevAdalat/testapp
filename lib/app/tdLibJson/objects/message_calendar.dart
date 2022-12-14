part of '../tdlibjson_api.dart';

class MessageCalendar extends TdObject {

  /// Contains information about found messages, split by days according to the option "utc_time_offset"
  const MessageCalendar({
    required this.totalCount,
    required this.days,
    this.extra,
    this.clientId,
  });
  
  /// [totalCount] Total number of found messages 
  final int totalCount;

  /// [days] Information about messages sent
  final List<MessageCalendarDay> days;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageCalendar.fromJson(Map<String, dynamic> json) => MessageCalendar(
    totalCount: json['total_count'],
    days: List<MessageCalendarDay>.from((json['days'] ?? []).map((item) => MessageCalendarDay.fromJson(item)).toList()),
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
   "days":${days.map((i) => i.toJson()).toList()}
}
	""";
  }
  
  MessageCalendar copyWith({
    int? totalCount,
    List<MessageCalendarDay>? days,
    dynamic extra,
    int? clientId,
  }) => MessageCalendar(
    totalCount: totalCount ?? this.totalCount,
    days: days ?? this.days,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messageCalendar';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
