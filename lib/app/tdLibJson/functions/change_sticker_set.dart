part of '../tdlibjson_api.dart';

class ChangeStickerSet extends TdFunction {

  /// Installs/uninstalls or activates/archives a sticker set
  const ChangeStickerSet({
    required this.setId,
    required this.isInstalled,
    required this.isArchived,
  });
  
  /// [setId] Identifier of the sticker set 
  final int setId;

  /// [isInstalled] The new value of is_installed 
  final bool isInstalled;

  /// [isArchived] The new value of is_archived. A sticker set can't be installed and archived simultaneously
  final bool isArchived;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "set_id":$setId,
   "is_installed":$isInstalled,
   "is_archived":$isArchived
}
	""";
  }
  
  ChangeStickerSet copyWith({
    int? setId,
    bool? isInstalled,
    bool? isArchived,
  }) => ChangeStickerSet(
    setId: setId ?? this.setId,
    isInstalled: isInstalled ?? this.isInstalled,
    isArchived: isArchived ?? this.isArchived,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'changeStickerSet';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
