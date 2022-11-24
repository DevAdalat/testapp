part of '../tdlibjson_api.dart';

class DeleteFile extends TdFunction {

  /// Deletes a file from the TDLib file cache
  const DeleteFile({
    required this.fileId,
  });
  
  /// [fileId] Identifier of the file to delete
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
  
  DeleteFile copyWith({
    int? fileId,
  }) => DeleteFile(
    fileId: fileId ?? this.fileId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'deleteFile';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
