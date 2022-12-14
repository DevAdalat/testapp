part of '../tdlibjson_api.dart';

class SendWebAppData extends TdFunction {

  /// Sends data received from a keyboardButtonTypeWebApp Web App to a bot
  const SendWebAppData({
    required this.botUserId,
    required this.buttonText,
    required this.data,
  });
  
  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [buttonText] Text of the keyboardButtonTypeWebApp button, which opened the Web App 
  final String buttonText;

  /// [data] Received data
  final String data;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "bot_user_id":$botUserId,
   "button_text":"$buttonText",
   "data":"$data"
}
	""";
  }
  
  SendWebAppData copyWith({
    int? botUserId,
    String? buttonText,
    String? data,
  }) => SendWebAppData(
    botUserId: botUserId ?? this.botUserId,
    buttonText: buttonText ?? this.buttonText,
    data: data ?? this.data,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'sendWebAppData';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
