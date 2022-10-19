part of '../tdlibjson_api.dart';

class CheckPasswordRecoveryCode extends TdFunction {
  /// Checks whether a 2-step verification password recovery code sent to an email address is valid
  const CheckPasswordRecoveryCode({
    required this.recoveryCode,
  });

  /// [recoveryCode] Recovery code to check
  final String recoveryCode;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "recovery_code":"$recoveryCode"
}
	""";
  }

  CheckPasswordRecoveryCode copyWith({
    String? recoveryCode,
  }) =>
      CheckPasswordRecoveryCode(
        recoveryCode: recoveryCode ?? this.recoveryCode,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'checkPasswordRecoveryCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
