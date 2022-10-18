part of '../tdlibjson_api.dart';

class GetStickerEmojis extends TdFunction {

  /// Returns emoji corresponding to a sticker. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object
  const GetStickerEmojis({
    required this.sticker,
  });
  
  /// [sticker] Sticker file identifier
  final InputFile sticker;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "sticker": "${sticker.toJson()}"
  }
	""";
  }
  
  GetStickerEmojis copyWith({
    InputFile? sticker,
  }) => GetStickerEmojis(
    sticker: sticker ?? this.sticker,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getStickerEmojis';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
