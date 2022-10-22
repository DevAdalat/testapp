part of '../tdlibjson_api.dart';

class Close extends TdFunction {
  /// Closes the TDLib instance. All databases will be flushed to disk and properly closed. After the close completes, updateAuthorizationState with authorizationStateClosed will be sent. Can be called before initialization
  const Close();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  Close copyWith() => const Close();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'close';

  @override
  String getConstructor() => CONSTRUCTOR;
}
