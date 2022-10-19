part of '../tdlibjson_api.dart';

class MessageCalendarDay extends TdObject {
  /// Contains information about found messages sent on a specific day
  const MessageCalendarDay({
    required this.totalCount,
    required this.message,
  });

  /// [totalCount] Total number of found messages sent on the day
  final int totalCount;

  /// [message] First message sent on the day
  final Message message;

  /// Parse from a json
  factory MessageCalendarDay.fromJson(Map<String, dynamic> json) =>
      MessageCalendarDay(
        totalCount: json['total_count'],
        message: Message.fromJson(json['message']),
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "total_count":$totalCount,
   "message":"${message.toJson()}"
}
	""";
  }

  MessageCalendarDay copyWith({
    int? totalCount,
    Message? message,
  }) =>
      MessageCalendarDay(
        totalCount: totalCount ?? this.totalCount,
        message: message ?? this.message,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messageCalendarDay';

  @override
  String getConstructor() => CONSTRUCTOR;
}
