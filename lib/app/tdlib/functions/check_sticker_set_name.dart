part of '../tdlibjson.dart';

class CheckStickerSetName extends TdFunction {

  /// Checks whether a name can be used for a new sticker set
  const CheckStickerSetName({
    required this.name,
  });
  
  /// [name] Name to be checked
  final String name;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "@extra": extra,
    };
  }
  
  CheckStickerSetName copyWith({
    String? name,
  }) => CheckStickerSetName(
    name: name ?? this.name,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'checkStickerSetName';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
