part of '../tdlibjson_api.dart';

class EditProxy extends TdFunction {

  /// Edits an existing proxy server for network requests. Can be called before authorization
  const EditProxy({
    required this.proxyId,
    required this.server,
    required this.port,
    required this.enable,
    required this.type,
  });
  
  /// [proxyId] Proxy identifier 
  final int proxyId;

  /// [server] Proxy server IP address 
  final String server;

  /// [port] Proxy server port 
  final int port;

  /// [enable] Pass true to immediately enable the proxy 
  final bool enable;

  /// [type] Proxy type
  final ProxyType type;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "proxy_id":$proxyId,
   "server":"$server",
   "port":$port,
   "enable":$enable,
   "type":${type.toJson()}
}
	""";
  }
  
  EditProxy copyWith({
    int? proxyId,
    String? server,
    int? port,
    bool? enable,
    ProxyType? type,
  }) => EditProxy(
    proxyId: proxyId ?? this.proxyId,
    server: server ?? this.server,
    port: port ?? this.port,
    enable: enable ?? this.enable,
    type: type ?? this.type,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'editProxy';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
