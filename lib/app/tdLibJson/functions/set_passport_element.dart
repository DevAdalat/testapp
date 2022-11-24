part of '../tdlibjson_api.dart';

class SetPassportElement extends TdFunction {

  /// Adds an element to the user's Telegram Passport. May return an error with a message "PHONE_VERIFICATION_NEEDED" or "EMAIL_VERIFICATION_NEEDED" if the chosen phone number or the chosen email address must be verified first
  const SetPassportElement({
    required this.element,
    required this.password,
  });
  
  /// [element] Input Telegram Passport element 
  final InputPassportElement element;

  /// [password] The 2-step verification password of the current user
  final String password;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "element":${element.toJson()},
   "password":"$password"
}
	""";
  }
  
  SetPassportElement copyWith({
    InputPassportElement? element,
    String? password,
  }) => SetPassportElement(
    element: element ?? this.element,
    password: password ?? this.password,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setPassportElement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
