part of '../tdlibjson_api.dart';

class SearchInstalledStickerSets extends TdFunction {
  /// Searches for installed sticker sets by looking for specified query in their title and name
  const SearchInstalledStickerSets({
    required this.stickerType,
    required this.query,
    required this.limit,
  });

  /// [stickerType] Type of the sticker sets to search for
  final StickerType stickerType;

  /// [query] Query to search for
  final String query;

  /// [limit] The maximum number of sticker sets to return
  final int limit;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "sticker_type":"${stickerType.toJson()}",
   "query":"$query",
   "limit":$limit
}
	""";
  }

  SearchInstalledStickerSets copyWith({
    StickerType? stickerType,
    String? query,
    int? limit,
  }) =>
      SearchInstalledStickerSets(
        stickerType: stickerType ?? this.stickerType,
        query: query ?? this.query,
        limit: limit ?? this.limit,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'searchInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
