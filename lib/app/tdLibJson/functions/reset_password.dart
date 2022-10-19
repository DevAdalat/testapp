part of '../tdlibjson_api.dart';

class ResetPassword extends TdFunction {
  /// Removes 2-step verification password without previous password and access to recovery email address. The password can't be reset immediately and the request needs to be repeated after the specified time
  const ResetPassword();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  ResetPassword copyWith() => const ResetPassword();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'resetPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
}
