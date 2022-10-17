part of '../tdlibjson_api.dart';

class CanTransferOwnership extends TdFunction {
  /// Checks whether the current session can be used to transfer a chat ownership to another user
  const CanTransferOwnership();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  CanTransferOwnership copyWith() => const CanTransferOwnership();

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'canTransferOwnership';

  @override
  String getConstructor() => CONSTRUCTOR;
}
