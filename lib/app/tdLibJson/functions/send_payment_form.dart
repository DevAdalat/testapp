part of '../tdlibjson_api.dart';

class SendPaymentForm extends TdFunction {

  /// Sends a filled-out payment form to the bot for final verification
  const SendPaymentForm({
    required this.inputInvoice,
    required this.paymentFormId,
    required this.orderInfoId,
    required this.shippingOptionId,
    required this.credentials,
    required this.tipAmount,
  });
  
  /// [inputInvoice] The invoice
  final InputInvoice inputInvoice;

  /// [paymentFormId] Payment form identifier returned by getPaymentForm
  final int paymentFormId;

  /// [orderInfoId] Identifier returned by validateOrderInfo, or an empty string 
  final String orderInfoId;

  /// [shippingOptionId] Identifier of a chosen shipping option, if applicable
  final String shippingOptionId;

  /// [credentials] The credentials chosen by user for payment
  final InputCredentials credentials;

  /// [tipAmount] Chosen by the user amount of tip in the smallest units of the currency
  final int tipAmount;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "input_invoice":${inputInvoice.toJson()},
   "payment_form_id":$paymentFormId,
   "order_info_id":"$orderInfoId",
   "shipping_option_id":"$shippingOptionId",
   "credentials":${credentials.toJson()},
   "tip_amount":$tipAmount
}
	""";
  }
  
  SendPaymentForm copyWith({
    InputInvoice? inputInvoice,
    int? paymentFormId,
    String? orderInfoId,
    String? shippingOptionId,
    InputCredentials? credentials,
    int? tipAmount,
  }) => SendPaymentForm(
    inputInvoice: inputInvoice ?? this.inputInvoice,
    paymentFormId: paymentFormId ?? this.paymentFormId,
    orderInfoId: orderInfoId ?? this.orderInfoId,
    shippingOptionId: shippingOptionId ?? this.shippingOptionId,
    credentials: credentials ?? this.credentials,
    tipAmount: tipAmount ?? this.tipAmount,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'sendPaymentForm';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
