part of '../tdlibjson_api.dart';

class GetSupportUser extends TdFunction {
  /// Returns a user that can be contacted to get support
  const GetSupportUser();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  GetSupportUser copyWith() => const GetSupportUser();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getSupportUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}
