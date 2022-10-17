part of '../tdlibjson_api.dart';

class GetStorageStatisticsFast extends TdFunction {
  /// Quickly returns approximate storage usage statistics. Can be called before authorization
  const GetStorageStatisticsFast();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetStorageStatisticsFast copyWith() => const GetStorageStatisticsFast();

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getStorageStatisticsFast';

  @override
  String getConstructor() => CONSTRUCTOR;
}
