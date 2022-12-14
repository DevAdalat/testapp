part of '../tdlibjson_api.dart';

class GroupCallStream extends TdObject {

  /// Describes an available stream in a group call
  const GroupCallStream({
    required this.channelId,
    required this.scale,
    required this.timeOffset,
  });
  
  /// [channelId] Identifier of an audio/video channel
  final int channelId;

  /// [scale] Scale of segment durations in the stream. The duration is 1000/(2**scale) milliseconds
  final int scale;

  /// [timeOffset] Point in time when the stream currently ends; Unix timestamp in milliseconds
  final int timeOffset;
  
  /// Parse from a json
  factory GroupCallStream.fromJson(Map<String, dynamic> json) => GroupCallStream(
    channelId: json['channel_id'],
    scale: json['scale'],
    timeOffset: json['time_offset'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "channel_id":$channelId,
   "scale":$scale,
   "time_offset":$timeOffset
}
	""";
  }
  
  GroupCallStream copyWith({
    int? channelId,
    int? scale,
    int? timeOffset,
  }) => GroupCallStream(
    channelId: channelId ?? this.channelId,
    scale: scale ?? this.scale,
    timeOffset: timeOffset ?? this.timeOffset,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'groupCallStream';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
