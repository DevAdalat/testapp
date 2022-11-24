part of '../tdlibjson_api.dart';

class CheckRecoveryEmailAddressCode extends TdFunction {

  /// Checks the 2-step verification recovery email address verification code
  const CheckRecoveryEmailAddressCode({
    required this.code,
  });
  
  /// [code] Verification code to check
  final String code;
  
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
  
  CheckRecoveryEmailAddressCode copyWith({
    String? code,
  }) => CheckRecoveryEmailAddressCode(
    code: code ?? this.code,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'checkRecoveryEmailAddressCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
