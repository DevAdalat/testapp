part of '../tdlibjson_api.dart';

class GetBankCardInfo extends TdFunction {
  /// Returns information about a bank card
  const GetBankCardInfo({
    required this.bankCardNumber,
  });

  /// [bankCardNumber] The bank card number
  final String bankCardNumber;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "bank_card_number":"$bankCardNumber"
}
	""";
  }

  GetBankCardInfo copyWith({
    String? bankCardNumber,
  }) =>
      GetBankCardInfo(
        bankCardNumber: bankCardNumber ?? this.bankCardNumber,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getBankCardInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
