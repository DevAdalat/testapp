part of '../tdlibjson_api.dart';

class SponsoredMessage extends TdObject {
  /// Describes a sponsored message
  const SponsoredMessage({
    required this.messageId,
    required this.isRecommended,
    required this.sponsorChatId,
    this.sponsorChatInfo,
    this.link,
    required this.content,
    this.extra,
    this.clientId,
  });

  /// [messageId] Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages
  final int messageId;

  /// [isRecommended] True, if the message needs to be labeled as "recommended" instead of "sponsored"
  final bool isRecommended;

  /// [sponsorChatId] Sponsor chat identifier; 0 if the sponsor chat is accessible through an invite link
  final int sponsorChatId;

  /// [sponsorChatInfo] Information about the sponsor chat; may be null unless sponsor_chat_id == 0
  final ChatInviteLinkInfo? sponsorChatInfo;

  /// [link] An internal link to be opened when the sponsored message is clicked; may be null if the sponsor chat needs to be opened instead
  final InternalLinkType? link;

  /// [content] Content of the message. Currently, can be only of the type messageText
  final MessageContent content;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory SponsoredMessage.fromJson(Map<String, dynamic> json) =>
      SponsoredMessage(
        messageId: json['message_id'],
        isRecommended: json['is_recommended'],
        sponsorChatId: json['sponsor_chat_id'],
        sponsorChatInfo: json['sponsor_chat_info'] == null
            ? null
            : ChatInviteLinkInfo.fromJson(json['sponsor_chat_info']),
        link: json['link'] == null
            ? null
            : InternalLinkType.fromJson(json['link']),
        content: MessageContent.fromJson(json['content']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "message_id":$messageId,
   "is_recommended":$isRecommended,
   "sponsor_chat_id":$sponsorChatId,
   "sponsor_chat_info":${sponsorChatInfo?.toJson()},
   "link":${link?.toJson()},
   "content":${content.toJson()}
}
	""";
  }

  SponsoredMessage copyWith({
    int? messageId,
    bool? isRecommended,
    int? sponsorChatId,
    ChatInviteLinkInfo? sponsorChatInfo,
    InternalLinkType? link,
    MessageContent? content,
    dynamic extra,
    int? clientId,
  }) =>
      SponsoredMessage(
        messageId: messageId ?? this.messageId,
        isRecommended: isRecommended ?? this.isRecommended,
        sponsorChatId: sponsorChatId ?? this.sponsorChatId,
        sponsorChatInfo: sponsorChatInfo ?? this.sponsorChatInfo,
        link: link ?? this.link,
        content: content ?? this.content,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'sponsoredMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}