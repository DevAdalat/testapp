part of '../tdlibjson_api.dart';

class CreateTemporaryPassword extends TdFunction {
  /// Creates a new temporary password for processing payments
  const CreateTemporaryPassword({
    required this.password,
    required this.validFor,
  });

  /// [password] The 2-step verification password of the current user
  final String password;

  /// [validFor] Time during which the temporary password will be valid, in seconds; must be between 60 and 86400
  final int validFor;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "password":"$password",
   "valid_for":$validFor
}
	""";
  }

  CreateTemporaryPassword copyWith({
    String? password,
    int? validFor,
  }) =>
      CreateTemporaryPassword(
        password: password ?? this.password,
        validFor: validFor ?? this.validFor,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'createTemporaryPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
}
