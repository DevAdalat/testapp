part of '../tdlibjson_api.dart';

class ChatMessageSender extends TdObject {

  /// Represents a message sender, which can be used to send messages in a chat
  const ChatMessageSender({
    required this.sender,
    required this.needsPremium,
  });
  
  /// [sender] Available message senders 
  final MessageSender sender;

  /// [needsPremium] True, if Telegram Premium is needed to use the message sender
  final bool needsPremium;
  
  /// Parse from a json
  factory ChatMessageSender.fromJson(Map<String, dynamic> json) => ChatMessageSender(
    sender: MessageSender.fromJson(json['sender']),
    needsPremium: json['needs_premium'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "sender":${sender.toJson()},
   "needs_premium":$needsPremium
}
	""";
  }
  
  ChatMessageSender copyWith({
    MessageSender? sender,
    bool? needsPremium,
  }) => ChatMessageSender(
    sender: sender ?? this.sender,
    needsPremium: needsPremium ?? this.needsPremium,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatMessageSender';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
