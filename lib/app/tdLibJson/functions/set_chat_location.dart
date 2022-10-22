part of '../tdlibjson_api.dart';

class SetChatLocation extends TdFunction {
  /// Changes the location of a chat. Available only for some location-based supergroups, use supergroupFullInfo.can_set_location to check whether the method is allowed to use
  const SetChatLocation({
    required this.chatId,
    required this.location,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [location] New location for the chat; must be valid and not null
  final ChatLocation location;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "location":${location.toJson()}
}
	""";
  }

  SetChatLocation copyWith({
    int? chatId,
    ChatLocation? location,
  }) =>
      SetChatLocation(
        chatId: chatId ?? this.chatId,
        location: location ?? this.location,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setChatLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
