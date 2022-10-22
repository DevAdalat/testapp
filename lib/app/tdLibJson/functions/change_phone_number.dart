part of '../tdlibjson_api.dart';

class ChangePhoneNumber extends TdFunction {
  /// Changes the phone number of the user and sends an authentication code to the user's new phone number. On success, returns information about the sent code
  const ChangePhoneNumber({
    required this.phoneNumber,
    this.settings,
  });

  /// [phoneNumber] The new phone number of the user in international format
  final String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number; pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "phone_number":"$phoneNumber",
   "settings":${settings?.toJson()}
}
	""";
  }

  ChangePhoneNumber copyWith({
    String? phoneNumber,
    PhoneNumberAuthenticationSettings? settings,
  }) =>
      ChangePhoneNumber(
        phoneNumber: phoneNumber ?? this.phoneNumber,
        settings: settings ?? this.settings,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'changePhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}
