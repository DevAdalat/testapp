part of '../tdlibjson_api.dart';

class LogOut extends TdFunction {

  /// Closes the TDLib instance after a proper logout. Requires an available network connection. All local data will be destroyed. After the logout completes, updateAuthorizationState with authorizationStateClosed will be sent
  const LogOut();
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  LogOut copyWith() => const LogOut();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'logOut';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
