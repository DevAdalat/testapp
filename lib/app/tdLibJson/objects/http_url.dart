part of '../tdlibjson_api.dart';

class HttpUrl extends TdObject {

  /// Contains an HTTP URL
  const HttpUrl({
    required this.url,
    this.extra,
    this.clientId,
  });
  
  /// [url] The URL
  final String url;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory HttpUrl.fromJson(Map<String, dynamic> json) => HttpUrl(
    url: json['url'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "url": "$url"
  }
	""";
  }
  
  HttpUrl copyWith({
    String? url,
    dynamic extra,
    int? clientId,
  }) => HttpUrl(
    url: url ?? this.url,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'httpUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
