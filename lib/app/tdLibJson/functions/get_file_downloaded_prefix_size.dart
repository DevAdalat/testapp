part of '../tdlibjson_api.dart';

class GetFileDownloadedPrefixSize extends TdFunction {
  /// Returns file downloaded prefix size from a given offset, in bytes
  const GetFileDownloadedPrefixSize({
    required this.fileId,
    required this.offset,
  });

  /// [fileId] Identifier of the file
  final int fileId;

  /// [offset] Offset from which downloaded prefix size needs to be calculated
  final int offset;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "file_id":$fileId,
   "offset":$offset
}
	""";
  }

  GetFileDownloadedPrefixSize copyWith({
    int? fileId,
    int? offset,
  }) =>
      GetFileDownloadedPrefixSize(
        fileId: fileId ?? this.fileId,
        offset: offset ?? this.offset,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getFileDownloadedPrefixSize';

  @override
  String getConstructor() => CONSTRUCTOR;
}
