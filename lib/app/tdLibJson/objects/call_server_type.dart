part of '../tdlibjson_api.dart';

class CallServerType extends TdObject {

  /// Describes the type of a call server
  const CallServerType();
  
  /// a CallServerType return type can be :
  /// * [CallServerTypeTelegramReflector]
  /// * [CallServerTypeWebrtc]
  factory CallServerType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CallServerTypeTelegramReflector.CONSTRUCTOR:
        return CallServerTypeTelegramReflector.fromJson(json);
      case CallServerTypeWebrtc.CONSTRUCTOR:
        return CallServerTypeWebrtc.fromJson(json);
      default:
        return const CallServerType();
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
  
  CallServerType copyWith() => const CallServerType();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'callServerType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallServerTypeTelegramReflector extends CallServerType {

  /// A Telegram call reflector
  const CallServerTypeTelegramReflector({
    required this.peerTag,
    required this.isTcp,
  });
  
  /// [peerTag] A peer tag to be used with the reflector 
  final String peerTag;

  /// [isTcp] True, if the server uses TCP instead of UDP
  final bool isTcp;
  
  /// Parse from a json
  factory CallServerTypeTelegramReflector.fromJson(Map<String, dynamic> json) => CallServerTypeTelegramReflector(
    peerTag: json['peer_tag'],
    isTcp: json['is_tcp'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "peer_tag":"$peerTag",
   "is_tcp":$isTcp
}
	""";
  }
  
  @override
  CallServerTypeTelegramReflector copyWith({
    String? peerTag,
    bool? isTcp,
  }) => CallServerTypeTelegramReflector(
    peerTag: peerTag ?? this.peerTag,
    isTcp: isTcp ?? this.isTcp,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'callServerTypeTelegramReflector';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallServerTypeWebrtc extends CallServerType {

  /// A WebRTC server
  const CallServerTypeWebrtc({
    required this.username,
    required this.password,
    required this.supportsTurn,
    required this.supportsStun,
  });
  
  /// [username] Username to be used for authentication 
  final String username;

  /// [password] Authentication password 
  final String password;

  /// [supportsTurn] True, if the server supports TURN 
  final bool supportsTurn;

  /// [supportsStun] True, if the server supports STUN
  final bool supportsStun;
  
  /// Parse from a json
  factory CallServerTypeWebrtc.fromJson(Map<String, dynamic> json) => CallServerTypeWebrtc(
    username: json['username'],
    password: json['password'],
    supportsTurn: json['supports_turn'],
    supportsStun: json['supports_stun'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "username":"$username",
   "password":"$password",
   "supports_turn":$supportsTurn,
   "supports_stun":$supportsStun
}
	""";
  }
  
  @override
  CallServerTypeWebrtc copyWith({
    String? username,
    String? password,
    bool? supportsTurn,
    bool? supportsStun,
  }) => CallServerTypeWebrtc(
    username: username ?? this.username,
    password: password ?? this.password,
    supportsTurn: supportsTurn ?? this.supportsTurn,
    supportsStun: supportsStun ?? this.supportsStun,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'callServerTypeWebrtc';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
