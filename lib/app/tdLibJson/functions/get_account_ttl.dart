part of '../tdlibjson_api.dart';

class GetAccountTtl extends TdFunction {
  /// Returns the period of inactivity after which the account of the current user will automatically be deleted
  const GetAccountTtl();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  GetAccountTtl copyWith() => const GetAccountTtl();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getAccountTtl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
