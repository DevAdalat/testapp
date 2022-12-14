part of '../tdlibjson_api.dart';

class GetFile extends TdFunction {

  /// Returns information about a file; this is an offline request
  const GetFile({
    required this.fileId,
  });
  
  /// [fileId] Identifier of the file to get
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
  
  GetFile copyWith({
    int? fileId,
  }) => GetFile(
    fileId: fileId ?? this.fileId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getFile';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
