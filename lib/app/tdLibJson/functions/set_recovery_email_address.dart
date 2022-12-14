part of '../tdlibjson_api.dart';

class SetRecoveryEmailAddress extends TdFunction {

  /// Changes the 2-step verification recovery email address of the user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed.. If new_recovery_email_address is the same as the email address that is currently set up, this call succeeds immediately and aborts all other requests waiting for an email confirmation
  const SetRecoveryEmailAddress({
    required this.password,
    required this.newRecoveryEmailAddress,
  });
  
  /// [password] The 2-step verification password of the current user 
  final String password;

  /// [newRecoveryEmailAddress] New recovery email address
  final String newRecoveryEmailAddress;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "password":"$password",
   "new_recovery_email_address":"$newRecoveryEmailAddress"
}
	""";
  }
  
  SetRecoveryEmailAddress copyWith({
    String? password,
    String? newRecoveryEmailAddress,
  }) => SetRecoveryEmailAddress(
    password: password ?? this.password,
    newRecoveryEmailAddress: newRecoveryEmailAddress ?? this.newRecoveryEmailAddress,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setRecoveryEmailAddress';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
