part of '../tdlibjson_api.dart';

class CheckAuthenticationEmailCode extends TdFunction {

  /// Checks the authentication of a email address. Works only when the current authorization state is authorizationStateWaitEmailCode
  const CheckAuthenticationEmailCode({
    required this.code,
  });
  
  /// [code] Email address authentication to check
  final EmailAddressAuthentication code;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "code":${code.toJson()}
}
	""";
  }
  
  CheckAuthenticationEmailCode copyWith({
    EmailAddressAuthentication? code,
  }) => CheckAuthenticationEmailCode(
    code: code ?? this.code,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'checkAuthenticationEmailCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
