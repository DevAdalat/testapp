part of '../tdlibjson_api.dart';

class NetworkType extends TdObject {
  /// Represents the type of a network
  const NetworkType();

  /// a NetworkType return type can be :
  /// * [NetworkTypeNone]
  /// * [NetworkTypeMobile]
  /// * [NetworkTypeMobileRoaming]
  /// * [NetworkTypeWiFi]
  /// * [NetworkTypeOther]
  factory NetworkType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case NetworkTypeNone.CONSTRUCTOR:
        return NetworkTypeNone.fromJson(json);
      case NetworkTypeMobile.CONSTRUCTOR:
        return NetworkTypeMobile.fromJson(json);
      case NetworkTypeMobileRoaming.CONSTRUCTOR:
        return NetworkTypeMobileRoaming.fromJson(json);
      case NetworkTypeWiFi.CONSTRUCTOR:
        return NetworkTypeWiFi.fromJson(json);
      case NetworkTypeOther.CONSTRUCTOR:
        return NetworkTypeOther.fromJson(json);
      default:
        return const NetworkType();
    }
  }

  @override
  String toJson() {
    return """
  {
  
}
	""";
  }

  NetworkType copyWith() => const NetworkType();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'networkType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkTypeNone extends NetworkType {
  /// The network is not available
  const NetworkTypeNone();

  /// Parse from a json
  factory NetworkTypeNone.fromJson(Map<String, dynamic> json) =>
      const NetworkTypeNone();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  NetworkTypeNone copyWith() => const NetworkTypeNone();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'networkTypeNone';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkTypeMobile extends NetworkType {
  /// A mobile network
  const NetworkTypeMobile();

  /// Parse from a json
  factory NetworkTypeMobile.fromJson(Map<String, dynamic> json) =>
      const NetworkTypeMobile();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  NetworkTypeMobile copyWith() => const NetworkTypeMobile();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'networkTypeMobile';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkTypeMobileRoaming extends NetworkType {
  /// A mobile roaming network
  const NetworkTypeMobileRoaming();

  /// Parse from a json
  factory NetworkTypeMobileRoaming.fromJson(Map<String, dynamic> json) =>
      const NetworkTypeMobileRoaming();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  NetworkTypeMobileRoaming copyWith() => const NetworkTypeMobileRoaming();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'networkTypeMobileRoaming';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkTypeWiFi extends NetworkType {
  /// A Wi-Fi network
  const NetworkTypeWiFi();

  /// Parse from a json
  factory NetworkTypeWiFi.fromJson(Map<String, dynamic> json) =>
      const NetworkTypeWiFi();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  NetworkTypeWiFi copyWith() => const NetworkTypeWiFi();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'networkTypeWiFi';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkTypeOther extends NetworkType {
  /// A different network type (e.g., Ethernet network)
  const NetworkTypeOther();

  /// Parse from a json
  factory NetworkTypeOther.fromJson(Map<String, dynamic> json) =>
      const NetworkTypeOther();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  @override
  NetworkTypeOther copyWith() => const NetworkTypeOther();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'networkTypeOther';

  @override
  String getConstructor() => CONSTRUCTOR;
}
