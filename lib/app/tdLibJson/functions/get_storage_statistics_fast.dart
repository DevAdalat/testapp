part of '../tdlibjson_api.dart';

class GetStorageStatisticsFast extends TdFunction {
  /// Quickly returns approximate storage usage statistics. Can be called before authorization
  const GetStorageStatisticsFast();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  GetStorageStatisticsFast copyWith() => const GetStorageStatisticsFast();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getStorageStatisticsFast';

  @override
  String getConstructor() => CONSTRUCTOR;
}
