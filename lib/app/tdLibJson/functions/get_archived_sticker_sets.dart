part of '../tdlibjson_api.dart';

class GetArchivedStickerSets extends TdFunction {

  /// Returns a list of archived sticker sets
  const GetArchivedStickerSets({
    required this.stickerType,
    required this.offsetStickerSetId,
    required this.limit,
  });
  
  /// [stickerType] Type of the sticker sets to return 
  final StickerType stickerType;

  /// [offsetStickerSetId] Identifier of the sticker set from which to return the result 
  final int offsetStickerSetId;

  /// [limit] The maximum number of sticker sets to return; up to 100
  final int limit;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "sticker_type":${stickerType.toJson()},
   "offset_sticker_set_id":$offsetStickerSetId,
   "limit":$limit
}
	""";
  }
  
  GetArchivedStickerSets copyWith({
    StickerType? stickerType,
    int? offsetStickerSetId,
    int? limit,
  }) => GetArchivedStickerSets(
    stickerType: stickerType ?? this.stickerType,
    offsetStickerSetId: offsetStickerSetId ?? this.offsetStickerSetId,
    limit: limit ?? this.limit,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getArchivedStickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
