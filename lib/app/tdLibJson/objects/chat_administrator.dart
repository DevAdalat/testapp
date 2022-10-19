part of '../tdlibjson_api.dart';

class ChatAdministrator extends TdObject {
  /// Contains information about a chat administrator
  const ChatAdministrator({
    required this.userId,
    required this.customTitle,
    required this.isOwner,
  });

  /// [userId] User identifier of the administrator
  final int userId;

  /// [customTitle] Custom title of the administrator
  final String customTitle;

  /// [isOwner] True, if the user is the owner of the chat
  final bool isOwner;

  /// Parse from a json
  factory ChatAdministrator.fromJson(Map<String, dynamic> json) =>
      ChatAdministrator(
        userId: json['user_id'],
        customTitle: json['custom_title'],
        isOwner: json['is_owner'],
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "user_id":$userId,
   "custom_title":"$customTitle",
   "is_owner":$isOwner
}
	""";
  }

  ChatAdministrator copyWith({
    int? userId,
    String? customTitle,
    bool? isOwner,
  }) =>
      ChatAdministrator(
        userId: userId ?? this.userId,
        customTitle: customTitle ?? this.customTitle,
        isOwner: isOwner ?? this.isOwner,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatAdministrator';

  @override
  String getConstructor() => CONSTRUCTOR;
}
