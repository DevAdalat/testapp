part of '../tdlibjson_api.dart';

class GetRecoveryEmailAddress extends TdFunction {

  /// Returns a 2-step verification recovery email address that was previously set up. This method can be used to verify a password provided by the user
  const GetRecoveryEmailAddress({
    required this.password,
  });
  
  /// [password] The 2-step verification password for the current user
  final String password;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "password":"$password"
}
	""";
  }
  
  GetRecoveryEmailAddress copyWith({
    String? password,
  }) => GetRecoveryEmailAddress(
    password: password ?? this.password,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getRecoveryEmailAddress';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
