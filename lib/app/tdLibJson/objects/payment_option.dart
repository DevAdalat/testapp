part of '../tdlibjson_api.dart';

class PaymentOption extends TdObject {

  /// Describes an additional payment option
  const PaymentOption({
    required this.title,
    required this.url,
  });
  
  /// [title] Title for the payment option 
  final String title;

  /// [url] Payment form URL to be opened in a web view
  final String url;
  
  /// Parse from a json
  factory PaymentOption.fromJson(Map<String, dynamic> json) => PaymentOption(
    title: json['title'],
    url: json['url'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "title": "$title",
    "url": "$url"
  }
	""";
  }
  
  PaymentOption copyWith({
    String? title,
    String? url,
  }) => PaymentOption(
    title: title ?? this.title,
    url: url ?? this.url,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'paymentOption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
