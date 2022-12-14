part of '../tdlibjson_api.dart';

class PaymentForm extends TdObject {

  /// Contains information about an invoice payment form
  const PaymentForm({
    required this.id,
    required this.invoice,
    required this.sellerBotUserId,
    required this.paymentProviderUserId,
    required this.paymentProvider,
    required this.additionalPaymentOptions,
    this.savedOrderInfo,
    required this.savedCredentials,
    required this.canSaveCredentials,
    required this.needPassword,
    required this.productTitle,
    required this.productDescription,
    this.productPhoto,
    this.extra,
    this.clientId,
  });
  
  /// [id] The payment form identifier
  final int id;

  /// [invoice] Full information about the invoice
  final Invoice invoice;

  /// [sellerBotUserId] User identifier of the seller bot
  final int sellerBotUserId;

  /// [paymentProviderUserId] User identifier of the payment provider bot
  final int paymentProviderUserId;

  /// [paymentProvider] Information about the payment provider
  final PaymentProvider paymentProvider;

  /// [additionalPaymentOptions] The list of additional payment options
  final List<PaymentOption> additionalPaymentOptions;

  /// [savedOrderInfo] Saved server-side order information; may be null
  final OrderInfo? savedOrderInfo;

  /// [savedCredentials] The list of saved payment credentials
  final List<SavedCredentials> savedCredentials;

  /// [canSaveCredentials] True, if the user can choose to save credentials
  final bool canSaveCredentials;

  /// [needPassword] True, if the user will be able to save credentials, if sets up a 2-step verification password
  final bool needPassword;

  /// [productTitle] Product title
  final String productTitle;

  /// [productDescription] Product description
  final FormattedText productDescription;

  /// [productPhoto] Product photo; may be null
  final Photo? productPhoto;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PaymentForm.fromJson(Map<String, dynamic> json) => PaymentForm(
    id: int.parse(json['id']),
    invoice: Invoice.fromJson(json['invoice']),
    sellerBotUserId: json['seller_bot_user_id'],
    paymentProviderUserId: json['payment_provider_user_id'],
    paymentProvider: PaymentProvider.fromJson(json['payment_provider']),
    additionalPaymentOptions: List<PaymentOption>.from((json['additional_payment_options'] ?? []).map((item) => PaymentOption.fromJson(item)).toList()),
    savedOrderInfo: json['saved_order_info'] == null ? null : OrderInfo.fromJson(json['saved_order_info']),
    savedCredentials: List<SavedCredentials>.from((json['saved_credentials'] ?? []).map((item) => SavedCredentials.fromJson(item)).toList()),
    canSaveCredentials: json['can_save_credentials'],
    needPassword: json['need_password'],
    productTitle: json['product_title'],
    productDescription: FormattedText.fromJson(json['product_description']),
    productPhoto: json['product_photo'] == null ? null : Photo.fromJson(json['product_photo']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "id":$id,
   "invoice":${invoice.toJson()},
   "seller_bot_user_id":$sellerBotUserId,
   "payment_provider_user_id":$paymentProviderUserId,
   "payment_provider":${paymentProvider.toJson()},
   "additional_payment_options":${additionalPaymentOptions.map((i) => i.toJson()).toList()},
   "saved_order_info":${savedOrderInfo?.toJson()},
   "saved_credentials":${savedCredentials.map((i) => i.toJson()).toList()},
   "can_save_credentials":$canSaveCredentials,
   "need_password":$needPassword,
   "product_title":"$productTitle",
   "product_description":${productDescription.toJson()},
   "product_photo":${productPhoto?.toJson()}
}
	""";
  }
  
  PaymentForm copyWith({
    int? id,
    Invoice? invoice,
    int? sellerBotUserId,
    int? paymentProviderUserId,
    PaymentProvider? paymentProvider,
    List<PaymentOption>? additionalPaymentOptions,
    OrderInfo? savedOrderInfo,
    List<SavedCredentials>? savedCredentials,
    bool? canSaveCredentials,
    bool? needPassword,
    String? productTitle,
    FormattedText? productDescription,
    Photo? productPhoto,
    dynamic extra,
    int? clientId,
  }) => PaymentForm(
    id: id ?? this.id,
    invoice: invoice ?? this.invoice,
    sellerBotUserId: sellerBotUserId ?? this.sellerBotUserId,
    paymentProviderUserId: paymentProviderUserId ?? this.paymentProviderUserId,
    paymentProvider: paymentProvider ?? this.paymentProvider,
    additionalPaymentOptions: additionalPaymentOptions ?? this.additionalPaymentOptions,
    savedOrderInfo: savedOrderInfo ?? this.savedOrderInfo,
    savedCredentials: savedCredentials ?? this.savedCredentials,
    canSaveCredentials: canSaveCredentials ?? this.canSaveCredentials,
    needPassword: needPassword ?? this.needPassword,
    productTitle: productTitle ?? this.productTitle,
    productDescription: productDescription ?? this.productDescription,
    productPhoto: productPhoto ?? this.productPhoto,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'paymentForm';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
