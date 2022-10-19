part of '../tdlibjson_api.dart';

class GetPaymentReceipt extends TdFunction {
  /// Returns information about a successful payment
  const GetPaymentReceipt({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Chat identifier of the PaymentSuccessful message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "chat_id":$chatId,
   "message_id":$messageId
}
	""";
  }

  GetPaymentReceipt copyWith({
    int? chatId,
    int? messageId,
  }) =>
      GetPaymentReceipt(
        chatId: chatId ?? this.chatId,
        messageId: messageId ?? this.messageId,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getPaymentReceipt';

  @override
  String getConstructor() => CONSTRUCTOR;
}
