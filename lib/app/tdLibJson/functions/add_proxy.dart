part of '../tdlibjson_api.dart';

class AddProxy extends TdFunction {

  /// Adds a proxy server for network requests. Can be called before authorization
  const AddProxy({
    required this.server,
    required this.port,
    required this.enable,
    required this.type,
  });
  
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
   "server":"$server",
   "port":$port,
   "enable":$enable,
   "type":${type.toJson()}
}
	""";
  }
  
  AddProxy copyWith({
    String? server,
    int? port,
    bool? enable,
    ProxyType? type,
  }) => AddProxy(
    server: server ?? this.server,
    port: port ?? this.port,
    enable: enable ?? this.enable,
    type: type ?? this.type,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'addProxy';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
