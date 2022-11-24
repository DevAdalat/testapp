part of '../tdlibjson_api.dart';

class CheckAuthenticationBotToken extends TdFunction {

  /// Checks the authentication token of a bot; to log in as a bot. Works only when the current authorization state is authorizationStateWaitPhoneNumber. Can be used instead of setAuthenticationPhoneNumber and checkAuthenticationCode to log in
  const CheckAuthenticationBotToken({
    required this.token,
  });
  
  /// [token] The bot token
  final String token;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "token":"$token"
}
	""";
  }
  
  CheckAuthenticationBotToken copyWith({
    String? token,
  }) => CheckAuthenticationBotToken(
    token: token ?? this.token,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'checkAuthenticationBotToken';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
