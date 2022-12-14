part of '../tdlibjson_api.dart';

class MessageFileType extends TdObject {

  /// Contains information about a file with messages exported from another app
  const MessageFileType();
  
  /// a MessageFileType return type can be :
  /// * [MessageFileTypePrivate]
  /// * [MessageFileTypeGroup]
  /// * [MessageFileTypeUnknown]
  factory MessageFileType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageFileTypePrivate.CONSTRUCTOR:
        return MessageFileTypePrivate.fromJson(json);
      case MessageFileTypeGroup.CONSTRUCTOR:
        return MessageFileTypeGroup.fromJson(json);
      case MessageFileTypeUnknown.CONSTRUCTOR:
        return MessageFileTypeUnknown.fromJson(json);
      default:
        return const MessageFileType();
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
  
  MessageFileType copyWith() => const MessageFileType();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messageFileType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageFileTypePrivate extends MessageFileType {

  /// The messages was exported from a private chat
  const MessageFileTypePrivate({
    required this.name,
    this.extra,
    this.clientId,
  });
  
  /// [name] Name of the other party; may be empty if unrecognized
  final String name;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageFileTypePrivate.fromJson(Map<String, dynamic> json) => MessageFileTypePrivate(
    name: json['name'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "name":"$name"
}
	""";
  }
  
  @override
  MessageFileTypePrivate copyWith({
    String? name,
    dynamic extra,
    int? clientId,
  }) => MessageFileTypePrivate(
    name: name ?? this.name,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messageFileTypePrivate';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageFileTypeGroup extends MessageFileType {

  /// The messages was exported from a group chat
  const MessageFileTypeGroup({
    required this.title,
    this.extra,
    this.clientId,
  });
  
  /// [title] Title of the group chat; may be empty if unrecognized
  final String title;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageFileTypeGroup.fromJson(Map<String, dynamic> json) => MessageFileTypeGroup(
    title: json['title'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "title":"$title"
}
	""";
  }
  
  @override
  MessageFileTypeGroup copyWith({
    String? title,
    dynamic extra,
    int? clientId,
  }) => MessageFileTypeGroup(
    title: title ?? this.title,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messageFileTypeGroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class MessageFileTypeUnknown extends MessageFileType {

  /// The messages was exported from a chat of unknown type
  const MessageFileTypeUnknown({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageFileTypeUnknown.fromJson(Map<String, dynamic> json) => MessageFileTypeUnknown(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
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
  MessageFileTypeUnknown copyWith({
    dynamic extra,
    int? clientId,
  }) => MessageFileTypeUnknown(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messageFileTypeUnknown';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
