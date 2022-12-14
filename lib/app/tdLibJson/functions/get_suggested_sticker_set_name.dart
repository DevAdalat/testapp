part of '../tdlibjson_api.dart';

class GetSuggestedStickerSetName extends TdFunction {

  /// Returns a suggested name for a new sticker set with a given title
  const GetSuggestedStickerSetName({
    required this.title,
  });
  
  /// [title] Sticker set title; 1-64 characters
  final String title;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "title":"$title"
}
	""";
  }
  
  GetSuggestedStickerSetName copyWith({
    String? title,
  }) => GetSuggestedStickerSetName(
    title: title ?? this.title,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getSuggestedStickerSetName';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
