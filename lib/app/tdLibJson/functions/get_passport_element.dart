part of '../tdlibjson_api.dart';

class GetPassportElement extends TdFunction {

  /// Returns one of the available Telegram Passport elements
  const GetPassportElement({
    required this.type,
    required this.password,
  });
  
  /// [type] Telegram Passport element type 
  final PassportElementType type;

  /// [password] The 2-step verification password of the current user
  final String password;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "type": "${type.toJson()}",
    "password": "$password"
  }
	""";
  }
  
  GetPassportElement copyWith({
    PassportElementType? type,
    String? password,
  }) => GetPassportElement(
    type: type ?? this.type,
    password: password ?? this.password,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getPassportElement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
