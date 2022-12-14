part of '../tdlibjson_api.dart';

class EditInlineMessageLiveLocation extends TdFunction {

  /// Edits the content of a live location in an inline message sent via a bot; for bots only
  const EditInlineMessageLiveLocation({
    required this.inlineMessageId,
    this.replyMarkup,
    this.location,
    required this.heading,
    required this.proximityAlertRadius,
  });
  
  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [location] New location content of the message; pass null to stop sharing the live location
  final Location? location;

  /// [heading] The new direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
  final int heading;

  /// [proximityAlertRadius] The new maximum distance for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled
  final int proximityAlertRadius;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "inline_message_id":"$inlineMessageId",
   "reply_markup":${replyMarkup?.toJson()},
   "location":${location?.toJson()},
   "heading":$heading,
   "proximity_alert_radius":$proximityAlertRadius
}
	""";
  }
  
  EditInlineMessageLiveLocation copyWith({
    String? inlineMessageId,
    ReplyMarkup? replyMarkup,
    Location? location,
    int? heading,
    int? proximityAlertRadius,
  }) => EditInlineMessageLiveLocation(
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    replyMarkup: replyMarkup ?? this.replyMarkup,
    location: location ?? this.location,
    heading: heading ?? this.heading,
    proximityAlertRadius: proximityAlertRadius ?? this.proximityAlertRadius,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'editInlineMessageLiveLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
