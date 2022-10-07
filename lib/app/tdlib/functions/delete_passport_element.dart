part of '../tdlibjson.dart';

class DeletePassportElement extends TdFunction {

  /// Deletes a Telegram Passport element
  const DeletePassportElement({
    required this.type,
  });
  
  /// [type] Element type
  final PassportElementType type;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "@extra": extra,
    };
  }
  
  DeletePassportElement copyWith({
    PassportElementType? type,
  }) => DeletePassportElement(
    type: type ?? this.type,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'deletePassportElement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
