part of '../tdlibjson_api.dart';

class ValidateOrderInfo extends TdFunction {
  /// Validates the order information provided by a user and returns the available shipping options for a flexible invoice
  const ValidateOrderInfo({
    required this.inputInvoice,
    this.orderInfo,
    required this.allowSave,
  });

  /// [inputInvoice] The invoice
  final InputInvoice inputInvoice;

  /// [orderInfo] The order information, provided by the user; pass null if empty
  final OrderInfo? orderInfo;

  /// [allowSave] Pass true to save the order information
  final bool allowSave;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "input_invoice":"${inputInvoice.toJson()}",
   "order_info":"${orderInfo?.toJson()}",
   "allow_save":$allowSave
}
	""";
  }

  ValidateOrderInfo copyWith({
    InputInvoice? inputInvoice,
    OrderInfo? orderInfo,
    bool? allowSave,
  }) =>
      ValidateOrderInfo(
        inputInvoice: inputInvoice ?? this.inputInvoice,
        orderInfo: orderInfo ?? this.orderInfo,
        allowSave: allowSave ?? this.allowSave,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'validateOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
