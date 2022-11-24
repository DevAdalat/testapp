part of '../tdlibjson_api.dart';

class Proxies extends TdObject {

  /// Represents a list of proxy servers
  const Proxies({
    required this.proxies,
    this.extra,
    this.clientId,
  });
  
  /// [proxies] List of proxy servers
  final List<Proxy> proxies;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Proxies.fromJson(Map<String, dynamic> json) => Proxies(
    proxies: List<Proxy>.from((json['proxies'] ?? []).map((item) => Proxy.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "proxies":${proxies.map((i) => i.toJson()).toList()}
}
	""";
  }
  
  Proxies copyWith({
    List<Proxy>? proxies,
    dynamic extra,
    int? clientId,
  }) => Proxies(
    proxies: proxies ?? this.proxies,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'proxies';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
