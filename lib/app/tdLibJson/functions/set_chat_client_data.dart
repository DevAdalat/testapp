part of '../tdlibjson_api.dart';

class SetChatClientData extends TdFunction {

  /// Changes application-specific data associated with a chat
  const SetChatClientData({
    required this.chatId,
    required this.clientData,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [clientData] New value of client_data
  final String clientData;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "chat_id": "$chatId",
    "client_data": "$clientData"
  }
	""";
  }
  
  SetChatClientData copyWith({
    int? chatId,
    String? clientData,
  }) => SetChatClientData(
    chatId: chatId ?? this.chatId,
    clientData: clientData ?? this.clientData,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setChatClientData';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
