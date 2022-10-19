part of '../tdlibjson_api.dart';

class GetPhoneNumberInfo extends TdFunction {
  /// Returns information about a phone number by its prefix. Can be called before authorization
  const GetPhoneNumberInfo({
    required this.phoneNumberPrefix,
  });

  /// [phoneNumberPrefix] The phone number prefix
  final String phoneNumberPrefix;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "phone_number_prefix":"$phoneNumberPrefix"
}
	""";
  }

  GetPhoneNumberInfo copyWith({
    String? phoneNumberPrefix,
  }) =>
      GetPhoneNumberInfo(
        phoneNumberPrefix: phoneNumberPrefix ?? this.phoneNumberPrefix,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getPhoneNumberInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
