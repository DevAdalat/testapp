part of '../tdlibjson_api.dart';

class CheckAuthenticationCode extends TdFunction {

  /// Checks the authentication code. Works only when the current authorization state is authorizationStateWaitCode
  const CheckAuthenticationCode({
    required this.code,
  });
  
  /// [code] Authentication code to check
  final String code;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "code": "$code"
  }
	""";
  }
  
  CheckAuthenticationCode copyWith({
    String? code,
  }) => CheckAuthenticationCode(
    code: code ?? this.code,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'checkAuthenticationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
