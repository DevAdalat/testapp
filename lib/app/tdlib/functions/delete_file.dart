part of '../tdlibjson.dart';

class DeleteFile extends TdFunction {

  /// Deletes a file from the TDLib file cache
  const DeleteFile({
    required this.fileId,
  });
  
  /// [fileId] Identifier of the file to delete
  final int fileId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_id": fileId,
      "@extra": extra,
    };
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
