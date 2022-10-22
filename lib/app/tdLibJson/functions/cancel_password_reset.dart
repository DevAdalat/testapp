part of '../tdlibjson_api.dart';

class CancelPasswordReset extends TdFunction {
  /// Cancels reset of 2-step verification password. The method can be called if passwordState.pending_reset_date
  const CancelPasswordReset();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  CancelPasswordReset copyWith() => const CancelPasswordReset();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'cancelPasswordReset';

  @override
  String getConstructor() => CONSTRUCTOR;
}
