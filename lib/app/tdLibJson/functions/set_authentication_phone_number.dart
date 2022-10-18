part of '../tdlibjson_api.dart';

class SetAuthenticationPhoneNumber extends TdFunction {

  /// Sets the phone number of the user and sends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitPhoneNumber,. or if there is no pending authentication query and the current authorization state is authorizationStateWaitCode, authorizationStateWaitRegistration, or authorizationStateWaitPassword
  const SetAuthenticationPhoneNumber({
    required this.phoneNumber,
    this.settings,
  });
  
  /// [phoneNumber] The phone number of the user, in international format
  final String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number; pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "phone_number": "$phoneNumber",
    "settings": "${settings?.toJson()}"
  }
	""";
  }
  
  SetAuthenticationPhoneNumber copyWith({
    String? phoneNumber,
    PhoneNumberAuthenticationSettings? settings,
  }) => SetAuthenticationPhoneNumber(
    phoneNumber: phoneNumber ?? this.phoneNumber,
    settings: settings ?? this.settings,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setAuthenticationPhoneNumber';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
