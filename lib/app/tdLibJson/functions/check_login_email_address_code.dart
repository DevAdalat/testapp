part of '../tdlibjson_api.dart';

class CheckLoginEmailAddressCode extends TdFunction {
  /// Checks the login email address authentication
  const CheckLoginEmailAddressCode({
    required this.code,
  });

  /// [code] Email address authentication to check
  final EmailAddressAuthentication code;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "code":"${code.toJson()}"
}
	""";
  }

  CheckLoginEmailAddressCode copyWith({
    EmailAddressAuthentication? code,
  }) =>
      CheckLoginEmailAddressCode(
        code: code ?? this.code,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'checkLoginEmailAddressCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
