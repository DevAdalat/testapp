part of '../tdlibjson_api.dart';

class ChatAvailableReactions extends TdObject {

  /// Describes reactions available in the chat
  const ChatAvailableReactions();
  
  /// a ChatAvailableReactions return type can be :
  /// * [ChatAvailableReactionsAll]
  /// * [ChatAvailableReactionsSome]
  factory ChatAvailableReactions.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatAvailableReactionsAll.CONSTRUCTOR:
        return ChatAvailableReactionsAll.fromJson(json);
      case ChatAvailableReactionsSome.CONSTRUCTOR:
        return ChatAvailableReactionsSome.fromJson(json);
      default:
        return const ChatAvailableReactions();
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
  
  ChatAvailableReactions copyWith() => const ChatAvailableReactions();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatAvailableReactions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatAvailableReactionsAll extends ChatAvailableReactions {

  /// All reactions are available in the chat
  const ChatAvailableReactionsAll();
  
  /// Parse from a json
  factory ChatAvailableReactionsAll.fromJson(Map<String, dynamic> json) => const ChatAvailableReactionsAll();
  
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
  ChatAvailableReactionsAll copyWith() => const ChatAvailableReactionsAll();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatAvailableReactionsAll';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatAvailableReactionsSome extends ChatAvailableReactions {

  /// Only specific reactions are available in the chat
  const ChatAvailableReactionsSome({
    required this.reactions,
  });
  
  /// [reactions] The list of reactions
  final List<ReactionType> reactions;
  
  /// Parse from a json
  factory ChatAvailableReactionsSome.fromJson(Map<String, dynamic> json) => ChatAvailableReactionsSome(
    reactions: List<ReactionType>.from((json['reactions'] ?? []).map((item) => ReactionType.fromJson(item)).toList()),
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "reactions":${reactions.map((i) => i.toJson()).toList()}
}
	""";
  }
  
  @override
  ChatAvailableReactionsSome copyWith({
    List<ReactionType>? reactions,
  }) => ChatAvailableReactionsSome(
    reactions: reactions ?? this.reactions,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatAvailableReactionsSome';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
