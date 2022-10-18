part of '../tdlibjson_api.dart';

class CheckEmailAddressVerificationCode extends TdFunction {

  /// Checks the email address verification code for Telegram Passport
  const CheckEmailAddressVerificationCode({
    required this.code,
  });
  
  /// [code] Verification code to check
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
  
  CheckEmailAddressVerificationCode copyWith({
    String? code,
  }) => CheckEmailAddressVerificationCode(
    code: code ?? this.code,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'checkEmailAddressVerificationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
