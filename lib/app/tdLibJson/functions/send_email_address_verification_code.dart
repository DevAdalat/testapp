part of '../tdlibjson_api.dart';

class SendEmailAddressVerificationCode extends TdFunction {

  /// Sends a code to verify an email address to be added to a user's Telegram Passport
  const SendEmailAddressVerificationCode({
    required this.emailAddress,
  });
  
  /// [emailAddress] Email address
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
  
  SendEmailAddressVerificationCode copyWith({
    String? emailAddress,
  }) => SendEmailAddressVerificationCode(
    emailAddress: emailAddress ?? this.emailAddress,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'sendEmailAddressVerificationCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
