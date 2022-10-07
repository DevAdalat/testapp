part of '../tdlibjson.dart';

class TestUseUpdate extends TdFunction {

  /// Does nothing and ensures that the Update object is used; for testing only. This is an offline method. Can be called before authorization
  const TestUseUpdate();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  TestUseUpdate copyWith() => const TestUseUpdate();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'testUseUpdate';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
