part of '../tdlibjson_api.dart';

class SetAuthenticationEmailAddress extends TdFunction {

  /// Sets the email address of the user and sends an authentication code to the email address. Works only when the current authorization state is authorizationStateWaitEmailAddress
  const SetAuthenticationEmailAddress({
    required this.emailAddress,
  });
  
  /// [emailAddress] The email address of the user
  final String emailAddress;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "email_address":"$emailAddress"
}
	""";
  }
  
  SetAuthenticationEmailAddress copyWith({
    String? emailAddress,
  }) => SetAuthenticationEmailAddress(
    emailAddress: emailAddress ?? this.emailAddress,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setAuthenticationEmailAddress';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
