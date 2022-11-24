part of '../tdlibjson_api.dart';

class CreateInvoiceLink extends TdFunction {

  /// Creates a link for the given invoice; for bots only
  const CreateInvoiceLink({
    required this.invoice,
  });
  
  /// [invoice] Information about the invoice of the type inputMessageInvoice
  final InputMessageContent invoice;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "invoice":${invoice.toJson()}
}
	""";
  }
  
  CreateInvoiceLink copyWith({
    InputMessageContent? invoice,
  }) => CreateInvoiceLink(
    invoice: invoice ?? this.invoice,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'createInvoiceLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
