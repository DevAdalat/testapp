part of '../tdlibjson_api.dart';

class CheckAuthenticationPasswordRecoveryCode extends TdFunction {

  /// Checks whether a 2-step verification password recovery code sent to an email address is valid. Works only when the current authorization state is authorizationStateWaitPassword
  const CheckAuthenticationPasswordRecoveryCode({
    required this.recoveryCode,
  });
  
  /// [recoveryCode] Recovery code to check
  final String recoveryCode;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "recovery_code":"$recoveryCode"
}
	""";
  }
  
  CheckAuthenticationPasswordRecoveryCode copyWith({
    String? recoveryCode,
  }) => CheckAuthenticationPasswordRecoveryCode(
    recoveryCode: recoveryCode ?? this.recoveryCode,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'checkAuthenticationPasswordRecoveryCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
