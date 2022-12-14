part of '../tdlibjson_api.dart';

class CheckChangePhoneNumberCode extends TdFunction {

  /// Checks the authentication code sent to confirm a new phone number of the user
  const CheckChangePhoneNumberCode({
    required this.code,
  });
  
  /// [code] Authentication code to check
  final String code;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "code":"$code"
}
	""";
  }
  
  CheckChangePhoneNumberCode copyWith({
    String? code,
  }) => CheckChangePhoneNumberCode(
    code: code ?? this.code,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'checkChangePhoneNumberCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
