part of '../tdlibjson_api.dart';

class GetCurrentState extends TdFunction {
  /// Returns all updates needed to restore current TDLib state, i.e. all actual UpdateAuthorizationState/UpdateUser/UpdateNewChat and others. This is especially useful if TDLib is run in a separate process. Can be called before initialization
  const GetCurrentState();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetCurrentState copyWith() => const GetCurrentState();

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getCurrentState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
