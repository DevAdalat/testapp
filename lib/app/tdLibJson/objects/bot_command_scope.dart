part of '../tdlibjson_api.dart';

class BotCommandScope extends TdObject {

  /// Represents the scope to which bot commands are relevant
  const BotCommandScope();
  
  /// a BotCommandScope return type can be :
  /// * [BotCommandScopeDefault]
  /// * [BotCommandScopeAllPrivateChats]
  /// * [BotCommandScopeAllGroupChats]
  /// * [BotCommandScopeAllChatAdministrators]
  /// * [BotCommandScopeChat]
  /// * [BotCommandScopeChatAdministrators]
  /// * [BotCommandScopeChatMember]
  factory BotCommandScope.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case BotCommandScopeDefault.CONSTRUCTOR:
        return BotCommandScopeDefault.fromJson(json);
      case BotCommandScopeAllPrivateChats.CONSTRUCTOR:
        return BotCommandScopeAllPrivateChats.fromJson(json);
      case BotCommandScopeAllGroupChats.CONSTRUCTOR:
        return BotCommandScopeAllGroupChats.fromJson(json);
      case BotCommandScopeAllChatAdministrators.CONSTRUCTOR:
        return BotCommandScopeAllChatAdministrators.fromJson(json);
      case BotCommandScopeChat.CONSTRUCTOR:
        return BotCommandScopeChat.fromJson(json);
      case BotCommandScopeChatAdministrators.CONSTRUCTOR:
        return BotCommandScopeChatAdministrators.fromJson(json);
      case BotCommandScopeChatMember.CONSTRUCTOR:
        return BotCommandScopeChatMember.fromJson(json);
      default:
        return const BotCommandScope();
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
  
  BotCommandScope copyWith() => const BotCommandScope();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'botCommandScope';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BotCommandScopeDefault extends BotCommandScope {

  /// A scope covering all users
  const BotCommandScopeDefault();
  
  /// Parse from a json
  factory BotCommandScopeDefault.fromJson(Map<String, dynamic> json) => const BotCommandScopeDefault();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  BotCommandScopeDefault copyWith() => const BotCommandScopeDefault();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'botCommandScopeDefault';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BotCommandScopeAllPrivateChats extends BotCommandScope {

  /// A scope covering all private chats
  const BotCommandScopeAllPrivateChats();
  
  /// Parse from a json
  factory BotCommandScopeAllPrivateChats.fromJson(Map<String, dynamic> json) => const BotCommandScopeAllPrivateChats();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  BotCommandScopeAllPrivateChats copyWith() => const BotCommandScopeAllPrivateChats();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'botCommandScopeAllPrivateChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BotCommandScopeAllGroupChats extends BotCommandScope {

  /// A scope covering all group and supergroup chats
  const BotCommandScopeAllGroupChats();
  
  /// Parse from a json
  factory BotCommandScopeAllGroupChats.fromJson(Map<String, dynamic> json) => const BotCommandScopeAllGroupChats();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  BotCommandScopeAllGroupChats copyWith() => const BotCommandScopeAllGroupChats();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'botCommandScopeAllGroupChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BotCommandScopeAllChatAdministrators extends BotCommandScope {

  /// A scope covering all group and supergroup chat administrators
  const BotCommandScopeAllChatAdministrators();
  
  /// Parse from a json
  factory BotCommandScopeAllChatAdministrators.fromJson(Map<String, dynamic> json) => const BotCommandScopeAllChatAdministrators();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  BotCommandScopeAllChatAdministrators copyWith() => const BotCommandScopeAllChatAdministrators();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'botCommandScopeAllChatAdministrators';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BotCommandScopeChat extends BotCommandScope {

  /// A scope covering all members of a chat
  const BotCommandScopeChat({
    required this.chatId,
  });
  
  /// [chatId] Chat identifier
  final int chatId;
  
  /// Parse from a json
  factory BotCommandScopeChat.fromJson(Map<String, dynamic> json) => BotCommandScopeChat(
    chatId: json['chat_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId
}
	""";
  }
  
  @override
  BotCommandScopeChat copyWith({
    int? chatId,
  }) => BotCommandScopeChat(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'botCommandScopeChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BotCommandScopeChatAdministrators extends BotCommandScope {

  /// A scope covering all administrators of a chat
  const BotCommandScopeChatAdministrators({
    required this.chatId,
  });
  
  /// [chatId] Chat identifier
  final int chatId;
  
  /// Parse from a json
  factory BotCommandScopeChatAdministrators.fromJson(Map<String, dynamic> json) => BotCommandScopeChatAdministrators(
    chatId: json['chat_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId
}
	""";
  }
  
  @override
  BotCommandScopeChatAdministrators copyWith({
    int? chatId,
  }) => BotCommandScopeChatAdministrators(
    chatId: chatId ?? this.chatId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'botCommandScopeChatAdministrators';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class BotCommandScopeChatMember extends BotCommandScope {

  /// A scope covering a member of a chat
  const BotCommandScopeChatMember({
    required this.chatId,
    required this.userId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [userId] User identifier
  final int userId;
  
  /// Parse from a json
  factory BotCommandScopeChatMember.fromJson(Map<String, dynamic> json) => BotCommandScopeChatMember(
    chatId: json['chat_id'],
    userId: json['user_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "user_id":$userId
}
	""";
  }
  
  @override
  BotCommandScopeChatMember copyWith({
    int? chatId,
    int? userId,
  }) => BotCommandScopeChatMember(
    chatId: chatId ?? this.chatId,
    userId: userId ?? this.userId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'botCommandScopeChatMember';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
