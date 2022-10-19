part of '../tdlibjson_api.dart';

class MessageSchedulingState extends TdObject {
  /// Contains information about the time when a scheduled message will be sent
  const MessageSchedulingState();

  /// a MessageSchedulingState return type can be :
  /// * [MessageSchedulingStateSendAtDate]
  /// * [MessageSchedulingStateSendWhenOnline]
  factory MessageSchedulingState.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageSchedulingStateSendAtDate.CONSTRUCTOR:
        return MessageSchedulingStateSendAtDate.fromJson(json);
      case MessageSchedulingStateSendWhenOnline.CONSTRUCTOR:
        return MessageSchedulingStateSendWhenOnline.fromJson(json);
      default:
        return const MessageSchedulingState();
    }
  }

  @override
  String toJson() {
    return """
  {
  
}
	""";
  }

  MessageSchedulingState copyWith() => const MessageSchedulingState();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messageSchedulingState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSchedulingStateSendAtDate extends MessageSchedulingState {
  /// The message will be sent at the specified date
  const MessageSchedulingStateSendAtDate({
    required this.sendDate,
  });

  /// [sendDate] Date the message will be sent. The date must be within 367 days in the future
  final int sendDate;

  /// Parse from a json
  factory MessageSchedulingStateSendAtDate.fromJson(
          Map<String, dynamic> json) =>
      MessageSchedulingStateSendAtDate(
        sendDate: json['send_date'],
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "send_date":$sendDate
}
	""";
  }

  @override
  MessageSchedulingStateSendAtDate copyWith({
    int? sendDate,
  }) =>
      MessageSchedulingStateSendAtDate(
        sendDate: sendDate ?? this.sendDate,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messageSchedulingStateSendAtDate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class MessageSchedulingStateSendWhenOnline extends MessageSchedulingState {
  /// The message will be sent when the peer will be online. Applicable to private chats only and when the exact online status of the peer is known
  const MessageSchedulingStateSendWhenOnline();

  /// Parse from a json
  factory MessageSchedulingStateSendWhenOnline.fromJson(
          Map<String, dynamic> json) =>
      const MessageSchedulingStateSendWhenOnline();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  MessageSchedulingStateSendWhenOnline copyWith() =>
      const MessageSchedulingStateSendWhenOnline();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messageSchedulingStateSendWhenOnline';

  @override
  String getConstructor() => CONSTRUCTOR;
}
