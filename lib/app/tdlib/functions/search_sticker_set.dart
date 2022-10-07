part of '../tdlibjson.dart';

class SearchStickerSet extends TdFunction {

  /// Searches for a sticker set by its name
  const SearchStickerSet({
    required this.name,
  });
  
  /// [name] Name of the sticker set
  final String name;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "@extra": extra,
    };
  }
  
  SearchStickerSet copyWith({
    String? name,
  }) => SearchStickerSet(
    name: name ?? this.name,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'searchStickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
