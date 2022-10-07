part of '../tdlibjson.dart';

class CancelPreliminaryUploadFile extends TdFunction {

  /// Stops the preliminary uploading of a file. Supported only for files uploaded by using preliminaryUploadFile. For other files the behavior is undefined
  const CancelPreliminaryUploadFile({
    required this.fileId,
  });
  
  /// [fileId] Identifier of the file to stop uploading
  final int fileId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_id": fileId,
      "@extra": extra,
    };
  }
  
  CancelPreliminaryUploadFile copyWith({
    int? fileId,
  }) => CancelPreliminaryUploadFile(
    fileId: fileId ?? this.fileId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'cancelPreliminaryUploadFile';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
