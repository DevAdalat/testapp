part of '../tdlibjson_api.dart';

class SetNetworkType extends TdFunction {
  /// Sets the current network type. Can be called before authorization. Calling this method forces all network connections to reopen, mitigating the delay in switching between different networks, so it must be called whenever the network is changed, even if the network type remains the same.. Network type is used to check whether the library can use the network at all and also for collecting detailed network data usage statistics
  const SetNetworkType({
    this.type,
  });

  /// [type] The new network type; pass null to set network type to networkTypeOther
  final NetworkType? type;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "type":${type?.toJson()}
}
	""";
  }

  SetNetworkType copyWith({
    NetworkType? type,
  }) =>
      SetNetworkType(
        type: type ?? this.type,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setNetworkType';

  @override
  String getConstructor() => CONSTRUCTOR;
}
