part of '../tdlibjson_api.dart';

class ChatSource extends TdObject {

  /// Describes a reason why an external chat is shown in a chat list
  const ChatSource();
  
  /// a ChatSource return type can be :
  /// * [ChatSourceMtprotoProxy]
  /// * [ChatSourcePublicServiceAnnouncement]
  factory ChatSource.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatSourceMtprotoProxy.CONSTRUCTOR:
        return ChatSourceMtprotoProxy.fromJson(json);
      case ChatSourcePublicServiceAnnouncement.CONSTRUCTOR:
        return ChatSourcePublicServiceAnnouncement.fromJson(json);
      default:
        return const ChatSource();
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
  
  ChatSource copyWith() => const ChatSource();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatSource';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatSourceMtprotoProxy extends ChatSource {

  /// The chat is sponsored by the user's MTProxy server
  const ChatSourceMtprotoProxy();
  
  /// Parse from a json
  factory ChatSourceMtprotoProxy.fromJson(Map<String, dynamic> json) => const ChatSourceMtprotoProxy();
  
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
  ChatSourceMtprotoProxy copyWith() => const ChatSourceMtprotoProxy();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatSourceMtprotoProxy';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ChatSourcePublicServiceAnnouncement extends ChatSource {

  /// The chat contains a public service announcement
  const ChatSourcePublicServiceAnnouncement({
    required this.type,
    required this.text,
  });
  
  /// [type] The type of the announcement 
  final String type;

  /// [text] The text of the announcement
  final String text;
  
  /// Parse from a json
  factory ChatSourcePublicServiceAnnouncement.fromJson(Map<String, dynamic> json) => ChatSourcePublicServiceAnnouncement(
    type: json['type'],
    text: json['text'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "type":"$type",
   "text":"$text"
}
	""";
  }
  
  @override
  ChatSourcePublicServiceAnnouncement copyWith({
    String? type,
    String? text,
  }) => ChatSourcePublicServiceAnnouncement(
    type: type ?? this.type,
    text: text ?? this.text,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatSourcePublicServiceAnnouncement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
