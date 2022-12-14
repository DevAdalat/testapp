part of '../tdlibjson_api.dart';

class CheckAuthenticationPassword extends TdFunction {

  /// Checks the 2-step verification password for correctness. Works only when the current authorization state is authorizationStateWaitPassword
  const CheckAuthenticationPassword({
    required this.password,
  });
  
  /// [password] The 2-step verification password to check
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
  
  CheckAuthenticationPassword copyWith({
    String? password,
  }) => CheckAuthenticationPassword(
    password: password ?? this.password,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'checkAuthenticationPassword';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
