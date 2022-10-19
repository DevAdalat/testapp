part of '../tdlibjson_api.dart';

class DisconnectAllWebsites extends TdFunction {
  /// Disconnects all websites from the current user's Telegram account
  const DisconnectAllWebsites();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  DisconnectAllWebsites copyWith() => const DisconnectAllWebsites();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'disconnectAllWebsites';

  @override
  String getConstructor() => CONSTRUCTOR;
}
