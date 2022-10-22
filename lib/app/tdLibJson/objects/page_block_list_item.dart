part of '../tdlibjson_api.dart';

class PageBlockListItem extends TdObject {
  /// Describes an item of a list page block
  const PageBlockListItem({
    required this.label,
    required this.pageBlocks,
  });

  /// [label] Item label
  final String label;

  /// [pageBlocks] Item blocks
  final List<PageBlock> pageBlocks;

  /// Parse from a json
  factory PageBlockListItem.fromJson(Map<String, dynamic> json) =>
      PageBlockListItem(
        label: json['label'],
        pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? [])
            .map((item) => PageBlock.fromJson(item))
            .toList()),
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "label":"$label",
   "page_blocks":${pageBlocks.map((i) => i.toJson()).toList()}
}
	""";
  }

  PageBlockListItem copyWith({
    String? label,
    List<PageBlock>? pageBlocks,
  }) =>
      PageBlockListItem(
        label: label ?? this.label,
        pageBlocks: pageBlocks ?? this.pageBlocks,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'pageBlockListItem';

  @override
  String getConstructor() => CONSTRUCTOR;
}
