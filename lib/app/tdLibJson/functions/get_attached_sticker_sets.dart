part of '../tdlibjson_api.dart';

class GetAttachedStickerSets extends TdFunction {

  /// Returns a list of sticker sets attached to a file. Currently, only photos and videos can have attached sticker sets
  const GetAttachedStickerSets({
    required this.fileId,
  });
  
  /// [fileId] File identifier
  final int fileId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "file_id":$fileId
}
	""";
  }
  
  GetAttachedStickerSets copyWith({
    int? fileId,
  }) => GetAttachedStickerSets(
    fileId: fileId ?? this.fileId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getAttachedStickerSets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
