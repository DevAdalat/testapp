part of '../tdlibjson_api.dart';

class SetLoginEmailAddress extends TdFunction {
  /// Changes the login email address of the user. The change will not be applied until the new login email address is confirmed with
  const SetLoginEmailAddress();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  SetLoginEmailAddress copyWith() => const SetLoginEmailAddress();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setLoginEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}
