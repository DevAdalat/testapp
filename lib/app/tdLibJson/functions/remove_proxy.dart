part of '../tdlibjson_api.dart';

class RemoveProxy extends TdFunction {
  /// Removes a proxy server. Can be called before authorization
  const RemoveProxy({
    required this.proxyId,
  });

  /// [proxyId] Proxy identifier
  final int proxyId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "proxy_id": proxyId,
      "@extra": extra,
    };
  }

  RemoveProxy copyWith({
    int? proxyId,
  }) =>
      RemoveProxy(
        proxyId: proxyId ?? this.proxyId,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'removeProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
