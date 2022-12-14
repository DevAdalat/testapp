part of '../tdlibjson_api.dart';

class TMeUrl extends TdObject {

  /// Represents a URL linking to an internal Telegram entity
  const TMeUrl({
    required this.url,
    required this.type,
  });
  
  /// [url] URL 
  final String url;

  /// [type] Type of the URL
  final TMeUrlType type;
  
  /// Parse from a json
  factory TMeUrl.fromJson(Map<String, dynamic> json) => TMeUrl(
    url: json['url'],
    type: TMeUrlType.fromJson(json['type']),
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "url":"$url",
   "type":${type.toJson()}
}
	""";
  }
  
  TMeUrl copyWith({
    String? url,
    TMeUrlType? type,
  }) => TMeUrl(
    url: url ?? this.url,
    type: type ?? this.type,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'tMeUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
