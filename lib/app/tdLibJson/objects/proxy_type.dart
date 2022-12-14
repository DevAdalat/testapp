part of '../tdlibjson_api.dart';

class ProxyType extends TdObject {

  /// Describes the type of a proxy server
  const ProxyType();
  
  /// a ProxyType return type can be :
  /// * [ProxyTypeSocks5]
  /// * [ProxyTypeHttp]
  /// * [ProxyTypeMtproto]
  factory ProxyType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ProxyTypeSocks5.CONSTRUCTOR:
        return ProxyTypeSocks5.fromJson(json);
      case ProxyTypeHttp.CONSTRUCTOR:
        return ProxyTypeHttp.fromJson(json);
      case ProxyTypeMtproto.CONSTRUCTOR:
        return ProxyTypeMtproto.fromJson(json);
      default:
        return const ProxyType();
    }
  }
  
  @override
  String toJson() {
	return 
	"""
  {
  
}
	""";
  }
  
  ProxyType copyWith() => const ProxyType();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'proxyType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ProxyTypeSocks5 extends ProxyType {

  /// A SOCKS5 proxy server
  const ProxyTypeSocks5({
    required this.username,
    required this.password,
  });
  
  /// [username] Username for logging in; may be empty 
  final String username;

  /// [password] Password for logging in; may be empty
  final String password;
  
  /// Parse from a json
  factory ProxyTypeSocks5.fromJson(Map<String, dynamic> json) => ProxyTypeSocks5(
    username: json['username'],
    password: json['password'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "username":"$username",
   "password":"$password"
}
	""";
  }
  
  @override
  ProxyTypeSocks5 copyWith({
    String? username,
    String? password,
  }) => ProxyTypeSocks5(
    username: username ?? this.username,
    password: password ?? this.password,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'proxyTypeSocks5';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ProxyTypeHttp extends ProxyType {

  /// A HTTP transparent proxy server
  const ProxyTypeHttp({
    required this.username,
    required this.password,
    required this.httpOnly,
  });
  
  /// [username] Username for logging in; may be empty 
  final String username;

  /// [password] Password for logging in; may be empty 
  final String password;

  /// [httpOnly] Pass true if the proxy supports only HTTP requests and doesn't support transparent TCP connections via HTTP CONNECT method
  final bool httpOnly;
  
  /// Parse from a json
  factory ProxyTypeHttp.fromJson(Map<String, dynamic> json) => ProxyTypeHttp(
    username: json['username'],
    password: json['password'],
    httpOnly: json['http_only'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "username":"$username",
   "password":"$password",
   "http_only":$httpOnly
}
	""";
  }
  
  @override
  ProxyTypeHttp copyWith({
    String? username,
    String? password,
    bool? httpOnly,
  }) => ProxyTypeHttp(
    username: username ?? this.username,
    password: password ?? this.password,
    httpOnly: httpOnly ?? this.httpOnly,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'proxyTypeHttp';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ProxyTypeMtproto extends ProxyType {

  /// An MTProto proxy server
  const ProxyTypeMtproto({
    required this.secret,
  });
  
  /// [secret] The proxy's secret in hexadecimal encoding
  final String secret;
  
  /// Parse from a json
  factory ProxyTypeMtproto.fromJson(Map<String, dynamic> json) => ProxyTypeMtproto(
    secret: json['secret'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "secret":"$secret"
}
	""";
  }
  
  @override
  ProxyTypeMtproto copyWith({
    String? secret,
  }) => ProxyTypeMtproto(
    secret: secret ?? this.secret,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'proxyTypeMtproto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
