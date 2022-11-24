part of '../tdlibjson_api.dart';

class RemoveFileFromDownloads extends TdFunction {

  /// Removes a file from the file download list
  const RemoveFileFromDownloads({
    required this.fileId,
    required this.deleteFromCache,
  });
  
  /// [fileId] Identifier of the downloaded file 
  final int fileId;

  /// [deleteFromCache] Pass true to delete the file from the TDLib file cache
  final bool deleteFromCache;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "file_id":$fileId,
   "delete_from_cache":$deleteFromCache
}
	""";
  }
  
  RemoveFileFromDownloads copyWith({
    int? fileId,
    bool? deleteFromCache,
  }) => RemoveFileFromDownloads(
    fileId: fileId ?? this.fileId,
    deleteFromCache: deleteFromCache ?? this.deleteFromCache,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'removeFileFromDownloads';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
