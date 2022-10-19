part of '../tdlibjson_api.dart';

class GetProxyLink extends TdFunction {
  /// Returns an HTTPS link, which can be used to add a proxy. Available only for SOCKS5 and MTProto proxies. Can be called before authorization
  const GetProxyLink({
    required this.proxyId,
  });

  /// [proxyId] Proxy identifier
  final int proxyId;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "proxy_id":$proxyId
}
	""";
  }

  GetProxyLink copyWith({
    int? proxyId,
  }) =>
      GetProxyLink(
        proxyId: proxyId ?? this.proxyId,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getProxyLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
