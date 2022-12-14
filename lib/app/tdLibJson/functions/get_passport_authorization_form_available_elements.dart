part of '../tdlibjson_api.dart';

class GetPassportAuthorizationFormAvailableElements extends TdFunction {

  /// Returns already available Telegram Passport elements suitable for completing a Telegram Passport authorization form. Result can be received only once for each authorization form
  const GetPassportAuthorizationFormAvailableElements({
    required this.autorizationFormId,
    required this.password,
  });
  
  /// [autorizationFormId] Authorization form identifier 
  final int autorizationFormId;

  /// [password] The 2-step verification password of the current user
  final String password;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "autorization_form_id":$autorizationFormId,
   "password":"$password"
}
	""";
  }
  
  GetPassportAuthorizationFormAvailableElements copyWith({
    int? autorizationFormId,
    String? password,
  }) => GetPassportAuthorizationFormAvailableElements(
    autorizationFormId: autorizationFormId ?? this.autorizationFormId,
    password: password ?? this.password,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getPassportAuthorizationFormAvailableElements';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
