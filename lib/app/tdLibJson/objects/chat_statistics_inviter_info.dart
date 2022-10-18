part of '../tdlibjson_api.dart';

class ChatStatisticsInviterInfo extends TdObject {

  /// Contains statistics about number of new members invited by a user
  const ChatStatisticsInviterInfo({
    required this.userId,
    required this.addedMemberCount,
  });
  
  /// [userId] User identifier
  final int userId;

  /// [addedMemberCount] Number of new members invited by the user
  final int addedMemberCount;
  
  /// Parse from a json
  factory ChatStatisticsInviterInfo.fromJson(Map<String, dynamic> json) => ChatStatisticsInviterInfo(
    userId: json['user_id'],
    addedMemberCount: json['added_member_count'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "user_id": "$userId",
    "added_member_count": "$addedMemberCount"
  }
	""";
  }
  
  ChatStatisticsInviterInfo copyWith({
    int? userId,
    int? addedMemberCount,
  }) => ChatStatisticsInviterInfo(
    userId: userId ?? this.userId,
    addedMemberCount: addedMemberCount ?? this.addedMemberCount,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatStatisticsInviterInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
