part of '../tdlibjson.dart';

class DeleteSavedOrderInfo extends TdFunction {

  /// Deletes saved order information
  const DeleteSavedOrderInfo();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  DeleteSavedOrderInfo copyWith() => const DeleteSavedOrderInfo();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'deleteSavedOrderInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
