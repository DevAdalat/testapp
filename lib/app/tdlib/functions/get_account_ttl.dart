part of '../tdlibjson.dart';

class GetAccountTtl extends TdFunction {

  /// Returns the period of inactivity after which the account of the current user will automatically be deleted
  const GetAccountTtl();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetAccountTtl copyWith() => const GetAccountTtl();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getAccountTtl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
