part of '../tdlibjson_api.dart';

class PreliminaryUploadFile extends TdFunction {

  /// Preliminary uploads a file to the cloud before sending it in a message, which can be useful for uploading of being recorded voice and video notes. Updates updateFile will be used to notify about upload progress and successful completion of the upload. The file will not have a persistent remote identifier until it will be sent in a message
  const PreliminaryUploadFile({
    required this.file,
    this.fileType,
    required this.priority,
  });
  
  /// [file] File to upload
  final InputFile file;

  /// [fileType] File type; pass null if unknown
  final FileType? fileType;

  /// [priority] Priority of the upload (1-32). The higher the priority, the earlier the file will be uploaded. If the priorities of two files are equal, then the first one for which preliminaryUploadFile was called will be uploaded first
  final int priority;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "file":${file.toJson()},
   "file_type":${fileType?.toJson()},
   "priority":$priority
}
	""";
  }
  
  PreliminaryUploadFile copyWith({
    InputFile? file,
    FileType? fileType,
    int? priority,
  }) => PreliminaryUploadFile(
    file: file ?? this.file,
    fileType: fileType ?? this.fileType,
    priority: priority ?? this.priority,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'preliminaryUploadFile';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
