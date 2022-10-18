part of '../tdlibjson_api.dart';

class ChatMembersFilter extends TdObject {

  /// Specifies the kind of chat members to return in searchChatMembers
  const ChatMembersFilter();
  
  /// a ChatMembersFilter return type can be :
  /// * [ChatMembersFilterContacts]
  /// * [ChatMembersFilterAdministrators]
  /// * [ChatMembersFilterMembers]
  /// * [ChatMembersFilterMention]
  /// * [ChatMembersFilterRestricted]
  /// * [ChatMembersFilterBanned]
  /// * [ChatMembersFilterBots]
  factory ChatMembersFilter.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatMembersFilterContacts.CONSTRUCTOR:
        return ChatMembersFilterContacts.fromJson(json);
      case ChatMembersFilterAdministrators.CONSTRUCTOR:
        return ChatMembersFilterAdministrators.fromJson(json);
      case ChatMembersFilterMembers.CONSTRUCTOR:
        return ChatMembersFilterMembers.fromJson(json);
      case ChatMembersFilterMention.CONSTRUCTOR:
        return ChatMembersFilterMention.fromJson(json);
      case ChatMembersFilterRestricted.CONSTRUCTOR:
        return ChatMembersFilterRestricted.fromJson(json);
      case ChatMembersFilterBanned.CONSTRUCTOR:
        return ChatMembersFilterBanned.fromJson(json);
      case ChatMembersFilterBots.CONSTRUCTOR:
        return ChatMembersFilterBots.fromJson(json);
      default:
        return const ChatMembersFilter();
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
  
  ChatMembersFilter copyWith() => const ChatMembersFilter();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatMembersFilter';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatMembersFilterContacts extends ChatMembersFilter {

  /// Returns contacts of the user
  const ChatMembersFilterContacts();
  
  /// Parse from a json
  factory ChatMembersFilterContacts.fromJson(Map<String, dynamic> json) => const ChatMembersFilterContacts();
  
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
  ChatMembersFilterContacts copyWith() => const ChatMembersFilterContacts();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatMembersFilterContacts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatMembersFilterAdministrators extends ChatMembersFilter {

  /// Returns the owner and administrators
  const ChatMembersFilterAdministrators();
  
  /// Parse from a json
  factory ChatMembersFilterAdministrators.fromJson(Map<String, dynamic> json) => const ChatMembersFilterAdministrators();
  
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
  ChatMembersFilterAdministrators copyWith() => const ChatMembersFilterAdministrators();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatMembersFilterAdministrators';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatMembersFilterMembers extends ChatMembersFilter {

  /// Returns all chat members, including restricted chat members
  const ChatMembersFilterMembers();
  
  /// Parse from a json
  factory ChatMembersFilterMembers.fromJson(Map<String, dynamic> json) => const ChatMembersFilterMembers();
  
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
  ChatMembersFilterMembers copyWith() => const ChatMembersFilterMembers();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatMembersFilterMembers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatMembersFilterMention extends ChatMembersFilter {

  /// Returns users which can be mentioned in the chat
  const ChatMembersFilterMention({
    required this.messageThreadId,
  });
  
  /// [messageThreadId] If non-zero, the identifier of the current message thread
  final int messageThreadId;
  
  /// Parse from a json
  factory ChatMembersFilterMention.fromJson(Map<String, dynamic> json) => ChatMembersFilterMention(
    messageThreadId: json['message_thread_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "message_thread_id": "$messageThreadId"
  }
	""";
  }
  
  @override
  ChatMembersFilterMention copyWith({
    int? messageThreadId,
  }) => ChatMembersFilterMention(
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatMembersFilterMention';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatMembersFilterRestricted extends ChatMembersFilter {

  /// Returns users under certain restrictions in the chat; can be used only by administrators in a supergroup
  const ChatMembersFilterRestricted();
  
  /// Parse from a json
  factory ChatMembersFilterRestricted.fromJson(Map<String, dynamic> json) => const ChatMembersFilterRestricted();
  
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
  ChatMembersFilterRestricted copyWith() => const ChatMembersFilterRestricted();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatMembersFilterRestricted';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatMembersFilterBanned extends ChatMembersFilter {

  /// Returns users banned from the chat; can be used only by administrators in a supergroup or in a channel
  const ChatMembersFilterBanned();
  
  /// Parse from a json
  factory ChatMembersFilterBanned.fromJson(Map<String, dynamic> json) => const ChatMembersFilterBanned();
  
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
  ChatMembersFilterBanned copyWith() => const ChatMembersFilterBanned();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatMembersFilterBanned';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatMembersFilterBots extends ChatMembersFilter {

  /// Returns bot members of the chat
  const ChatMembersFilterBots();
  
  /// Parse from a json
  factory ChatMembersFilterBots.fromJson(Map<String, dynamic> json) => const ChatMembersFilterBots();
  
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
  ChatMembersFilterBots copyWith() => const ChatMembersFilterBots();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatMembersFilterBots';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
