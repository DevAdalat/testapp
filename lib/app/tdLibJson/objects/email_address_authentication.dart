part of '../tdlibjson_api.dart';

class EmailAddressAuthentication extends TdObject {

  /// Contains authentication data for a email address
  const EmailAddressAuthentication();
  
  /// a EmailAddressAuthentication return type can be :
  /// * [EmailAddressAuthenticationCode]
  /// * [EmailAddressAuthenticationAppleId]
  /// * [EmailAddressAuthenticationGoogleId]
  factory EmailAddressAuthentication.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case EmailAddressAuthenticationCode.CONSTRUCTOR:
        return EmailAddressAuthenticationCode.fromJson(json);
      case EmailAddressAuthenticationAppleId.CONSTRUCTOR:
        return EmailAddressAuthenticationAppleId.fromJson(json);
      case EmailAddressAuthenticationGoogleId.CONSTRUCTOR:
        return EmailAddressAuthenticationGoogleId.fromJson(json);
      default:
        return const EmailAddressAuthentication();
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
  
  EmailAddressAuthentication copyWith() => const EmailAddressAuthentication();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'emailAddressAuthentication';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class EmailAddressAuthenticationCode extends EmailAddressAuthentication {

  /// An authentication code delivered to a user's email address
  const EmailAddressAuthenticationCode({
    required this.code,
  });
  
  /// [code] The code
  final String code;
  
  /// Parse from a json
  factory EmailAddressAuthenticationCode.fromJson(Map<String, dynamic> json) => EmailAddressAuthenticationCode(
    code: json['code'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "code":"$code"
}
	""";
  }
  
  @override
  EmailAddressAuthenticationCode copyWith({
    String? code,
  }) => EmailAddressAuthenticationCode(
    code: code ?? this.code,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'emailAddressAuthenticationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class EmailAddressAuthenticationAppleId extends EmailAddressAuthentication {

  /// An authentication token received through Apple emailAddressAuthenticationAppleId
  const EmailAddressAuthenticationAppleId({
    required this.token,
  });
  
  /// [token] The token
  final String token;
  
  /// Parse from a json
  factory EmailAddressAuthenticationAppleId.fromJson(Map<String, dynamic> json) => EmailAddressAuthenticationAppleId(
    token: json['token'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "token":"$token"
}
	""";
  }
  
  @override
  EmailAddressAuthenticationAppleId copyWith({
    String? token,
  }) => EmailAddressAuthenticationAppleId(
    token: token ?? this.token,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'emailAddressAuthenticationAppleId';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class EmailAddressAuthenticationGoogleId extends EmailAddressAuthentication {

  /// An authentication token received through Google emailAddressAuthenticationGoogleId
  const EmailAddressAuthenticationGoogleId({
    required this.token,
  });
  
  /// [token] The token
  final String token;
  
  /// Parse from a json
  factory EmailAddressAuthenticationGoogleId.fromJson(Map<String, dynamic> json) => EmailAddressAuthenticationGoogleId(
    token: json['token'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "token":"$token"
}
	""";
  }
  
  @override
  EmailAddressAuthenticationGoogleId copyWith({
    String? token,
  }) => EmailAddressAuthenticationGoogleId(
    token: token ?? this.token,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'emailAddressAuthenticationGoogleId';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
