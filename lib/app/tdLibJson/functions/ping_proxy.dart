part of '../tdlibjson_api.dart';

class PingProxy extends TdFunction {
  /// Computes time needed to receive a response from a Telegram server through a proxy. Can be called before authorization
  const PingProxy({
    required this.proxyId,
  });

  /// [proxyId] Proxy identifier. Use 0 to ping a Telegram server without a proxy
  final int proxyId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "proxy_id": proxyId,
      "@extra": extra,
    };
  }

  PingProxy copyWith({
    int? proxyId,
  }) =>
      PingProxy(
        proxyId: proxyId ?? this.proxyId,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'pingProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
