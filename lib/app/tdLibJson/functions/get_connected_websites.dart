part of '../tdlibjson_api.dart';

class GetConnectedWebsites extends TdFunction {
  /// Returns all website where the current user used Telegram to log in
  const GetConnectedWebsites();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  GetConnectedWebsites copyWith() => const GetConnectedWebsites();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getConnectedWebsites';

  @override
  String getConstructor() => CONSTRUCTOR;
}
