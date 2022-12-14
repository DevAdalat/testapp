part of '../tdlibjson_api.dart';

class MessageInteractionInfo extends TdObject {

  /// Contains information about interactions with a message
  const MessageInteractionInfo({
    required this.viewCount,
    required this.forwardCount,
    this.replyInfo,
    required this.reactions,
  });
  
  /// [viewCount] Number of times the message was viewed
  final int viewCount;

  /// [forwardCount] Number of times the message was forwarded
  final int forwardCount;

  /// [replyInfo] Information about direct or indirect replies to the message; may be null. Currently, available only in channels with a discussion supergroup and discussion supergroups for messages, which are not replies itself
  final MessageReplyInfo? replyInfo;

  /// [reactions] The list of reactions added to the message
  final List<MessageReaction> reactions;
  
  /// Parse from a json
  factory MessageInteractionInfo.fromJson(Map<String, dynamic> json) => MessageInteractionInfo(
    viewCount: json['view_count'],
    forwardCount: json['forward_count'],
    replyInfo: json['reply_info'] == null ? null : MessageReplyInfo.fromJson(json['reply_info']),
    reactions: List<MessageReaction>.from((json['reactions'] ?? []).map((item) => MessageReaction.fromJson(item)).toList()),
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "view_count":$viewCount,
   "forward_count":$forwardCount,
   "reply_info":${replyInfo?.toJson()},
   "reactions":${reactions.map((i) => i.toJson()).toList()}
}
	""";
  }
  
  MessageInteractionInfo copyWith({
    int? viewCount,
    int? forwardCount,
    MessageReplyInfo? replyInfo,
    List<MessageReaction>? reactions,
  }) => MessageInteractionInfo(
    viewCount: viewCount ?? this.viewCount,
    forwardCount: forwardCount ?? this.forwardCount,
    replyInfo: replyInfo ?? this.replyInfo,
    reactions: reactions ?? this.reactions,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messageInteractionInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
