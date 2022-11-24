part of '../tdlibjson_api.dart';

class SearchStickerSet extends TdFunction {

  /// Searches for a sticker set by its name
  const SearchStickerSet({
    required this.name,
  });
  
  /// [name] Name of the sticker set
  final String name;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "name":"$name"
}
	""";
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
