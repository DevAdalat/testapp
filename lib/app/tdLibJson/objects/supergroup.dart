part of '../tdlibjson_api.dart';

class Supergroup extends TdObject {

  /// Represents a supergroup or channel with zero or more members (subscribers in the case of channels). From the point of view of the system, a channel is a special kind of a supergroup: only administrators can post and see the list of members, and posts from all administrators use the name and photo of the channel instead of individual names and profile photos. Unlike supergroups, channels can have an unlimited number of subscribers
  const Supergroup({
    required this.id,
    required this.username,
    required this.date,
    required this.status,
    required this.memberCount,
    required this.hasLinkedChat,
    required this.hasLocation,
    required this.signMessages,
    required this.joinToSendMessages,
    required this.joinByRequest,
    required this.isSlowModeEnabled,
    required this.isChannel,
    required this.isBroadcastGroup,
    required this.isVerified,
    required this.restrictionReason,
    required this.isScam,
    required this.isFake,
    this.extra,
    this.clientId,
  });
  
  /// [id] Supergroup or channel identifier
  final int id;

  /// [username] Username of the supergroup or channel; empty for private supergroups or channels
  final String username;

  /// [date] Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member
  final int date;

  /// [status] Status of the current user in the supergroup or channel; custom title will always be empty
  final ChatMemberStatus status;

  /// [memberCount] Number of members in the supergroup or channel; 0 if unknown. Currently, it is guaranteed to be known only if the supergroup or channel was received through searchPublicChats, searchChatsNearby, getInactiveSupergroupChats, getSuitableDiscussionChats, getGroupsInCommon, or getUserPrivacySettingRules
  final int memberCount;

  /// [hasLinkedChat] True, if the channel has a discussion group, or the supergroup is the designated discussion group for a channel
  final bool hasLinkedChat;

  /// [hasLocation] True, if the supergroup is connected to a location, i.e. the supergroup is a location-based supergroup
  final bool hasLocation;

  /// [signMessages] True, if messages sent to the channel need to contain information about the sender. This field is only applicable to channels
  final bool signMessages;

  /// [joinToSendMessages] True, if users need to join the supergroup before they can send messages. Always true for channels and non-discussion supergroups
  final bool joinToSendMessages;

  /// [joinByRequest] True, if all users directly joining the supergroup need to be approved by supergroup administrators. Always false for channels and supergroups without username, location, or a linked chat
  final bool joinByRequest;

  /// [isSlowModeEnabled] True, if the slow mode is enabled in the supergroup
  final bool isSlowModeEnabled;

  /// [isChannel] True, if the supergroup is a channel
  final bool isChannel;

  /// [isBroadcastGroup] True, if the supergroup is a broadcast group, i.e. only administrators can send messages and there is no limit on the number of members
  final bool isBroadcastGroup;

  /// [isVerified] True, if the supergroup or channel is verified
  final bool isVerified;

  /// [restrictionReason] If non-empty, contains a human-readable description of the reason why access to this supergroup or channel must be restricted
  final String restrictionReason;

  /// [isScam] True, if many users reported this supergroup or channel as a scam
  final bool isScam;

  /// [isFake] True, if many users reported this supergroup or channel as a fake account
  final bool isFake;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Supergroup.fromJson(Map<String, dynamic> json) => Supergroup(
    id: json['id'],
    username: json['username'],
    date: json['date'],
    status: ChatMemberStatus.fromJson(json['status']),
    memberCount: json['member_count'],
    hasLinkedChat: json['has_linked_chat'],
    hasLocation: json['has_location'],
    signMessages: json['sign_messages'],
    joinToSendMessages: json['join_to_send_messages'],
    joinByRequest: json['join_by_request'],
    isSlowModeEnabled: json['is_slow_mode_enabled'],
    isChannel: json['is_channel'],
    isBroadcastGroup: json['is_broadcast_group'],
    isVerified: json['is_verified'],
    restrictionReason: json['restriction_reason'],
    isScam: json['is_scam'],
    isFake: json['is_fake'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "id": "$id",
    "username": "$username",
    "date": "$date",
    "status": "${status.toJson()}",
    "member_count": "$memberCount",
    "has_linked_chat": $hasLinkedChat,
    "has_location": $hasLocation,
    "sign_messages": $signMessages,
    "join_to_send_messages": $joinToSendMessages,
    "join_by_request": $joinByRequest,
    "is_slow_mode_enabled": $isSlowModeEnabled,
    "is_channel": $isChannel,
    "is_broadcast_group": $isBroadcastGroup,
    "is_verified": $isVerified,
    "restriction_reason": "$restrictionReason",
    "is_scam": $isScam,
    "is_fake": $isFake
  }
	""";
  }
  
  Supergroup copyWith({
    int? id,
    String? username,
    int? date,
    ChatMemberStatus? status,
    int? memberCount,
    bool? hasLinkedChat,
    bool? hasLocation,
    bool? signMessages,
    bool? joinToSendMessages,
    bool? joinByRequest,
    bool? isSlowModeEnabled,
    bool? isChannel,
    bool? isBroadcastGroup,
    bool? isVerified,
    String? restrictionReason,
    bool? isScam,
    bool? isFake,
    dynamic extra,
    int? clientId,
  }) => Supergroup(
    id: id ?? this.id,
    username: username ?? this.username,
    date: date ?? this.date,
    status: status ?? this.status,
    memberCount: memberCount ?? this.memberCount,
    hasLinkedChat: hasLinkedChat ?? this.hasLinkedChat,
    hasLocation: hasLocation ?? this.hasLocation,
    signMessages: signMessages ?? this.signMessages,
    joinToSendMessages: joinToSendMessages ?? this.joinToSendMessages,
    joinByRequest: joinByRequest ?? this.joinByRequest,
    isSlowModeEnabled: isSlowModeEnabled ?? this.isSlowModeEnabled,
    isChannel: isChannel ?? this.isChannel,
    isBroadcastGroup: isBroadcastGroup ?? this.isBroadcastGroup,
    isVerified: isVerified ?? this.isVerified,
    restrictionReason: restrictionReason ?? this.restrictionReason,
    isScam: isScam ?? this.isScam,
    isFake: isFake ?? this.isFake,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'supergroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
