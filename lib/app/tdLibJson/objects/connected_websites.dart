part of '../tdlibjson_api.dart';

class ConnectedWebsites extends TdObject {

  /// Contains a list of websites the current user is logged in with Telegram
  const ConnectedWebsites({
    required this.websites,
    this.extra,
    this.clientId,
  });
  
  /// [websites] List of connected websites
  final List<ConnectedWebsite> websites;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ConnectedWebsites.fromJson(Map<String, dynamic> json) => ConnectedWebsites(
    websites: List<ConnectedWebsite>.from((json['websites'] ?? []).map((item) => ConnectedWebsite.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "websites":${websites.map((i) => i.toJson()).toList()}
}
	""";
  }
  
  ConnectedWebsites copyWith({
    List<ConnectedWebsite>? websites,
    dynamic extra,
    int? clientId,
  }) => ConnectedWebsites(
    websites: websites ?? this.websites,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'connectedWebsites';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
