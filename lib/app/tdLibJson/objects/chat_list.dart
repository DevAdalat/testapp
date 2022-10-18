part of '../tdlibjson_api.dart';

class ChatList extends TdObject {

  /// Describes a list of chats
  const ChatList();
  
  /// a ChatList return type can be :
  /// * [ChatListMain]
  /// * [ChatListArchive]
  /// * [ChatListFilter]
  factory ChatList.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatListMain.CONSTRUCTOR:
        return ChatListMain.fromJson(json);
      case ChatListArchive.CONSTRUCTOR:
        return ChatListArchive.fromJson(json);
      case ChatListFilter.CONSTRUCTOR:
        return ChatListFilter.fromJson(json);
      default:
        return const ChatList();
    }
  }
  
  @override
  String toJson() {
	return 
	"""
  {
  
  }
	""";
  }
  
  ChatList copyWith() => const ChatList();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatList';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatListMain extends ChatList {

  /// A main list of chats
  const ChatListMain();
  
  /// Parse from a json
  factory ChatListMain.fromJson(Map<String, dynamic> json) => const ChatListMain();
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  @override
  ChatListMain copyWith() => const ChatListMain();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatListMain';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatListArchive extends ChatList {

  /// A list of chats usually located at the top of the main chat list. Unmuted chats are automatically moved from the Archive to the Main chat list when a new message arrives
  const ChatListArchive();
  
  /// Parse from a json
  factory ChatListArchive.fromJson(Map<String, dynamic> json) => const ChatListArchive();
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  @override
  ChatListArchive copyWith() => const ChatListArchive();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatListArchive';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatListFilter extends ChatList {

  /// A list of chats belonging to a chat filter
  const ChatListFilter({
    required this.chatFilterId,
  });
  
  /// [chatFilterId] Chat filter identifier
  final int chatFilterId;
  
  /// Parse from a json
  factory ChatListFilter.fromJson(Map<String, dynamic> json) => ChatListFilter(
    chatFilterId: json['chat_filter_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "chat_filter_id": "$chatFilterId"
  }
	""";
  }
  
  @override
  ChatListFilter copyWith({
    int? chatFilterId,
  }) => ChatListFilter(
    chatFilterId: chatFilterId ?? this.chatFilterId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatListFilter';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
