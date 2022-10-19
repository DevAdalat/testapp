part of '../tdlibjson_api.dart';

class RegisterUser extends TdFunction {
  /// Finishes user registration. Works only when the current authorization state is authorizationStateWaitRegistration
  const RegisterUser({
    required this.firstName,
    required this.lastName,
  });

  /// [firstName] The first name of the user; 1-64 characters
  final String firstName;

  /// [lastName] The last name of the user; 0-64 characters
  final String lastName;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "first_name":"$firstName",
   "last_name":"$lastName"
}
	""";
  }

  RegisterUser copyWith({
    String? firstName,
    String? lastName,
  }) =>
      RegisterUser(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'registerUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}
