part of '../tdlibjson.dart';

class GetLogVerbosityLevel extends TdFunction {

  /// Returns current verbosity level of the internal logging of TDLib. Can be called synchronously
  const GetLogVerbosityLevel();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetLogVerbosityLevel copyWith() => const GetLogVerbosityLevel();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getLogVerbosityLevel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
