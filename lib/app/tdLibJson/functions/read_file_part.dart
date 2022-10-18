part of '../tdlibjson_api.dart';

class ReadFilePart extends TdFunction {

  /// Reads a part of a file from the TDLib file cache and returns read bytes. This method is intended to be used only if the application has no direct access to TDLib's file system, because it is usually slower than a direct read from the file
  const ReadFilePart({
    required this.fileId,
    required this.offset,
    required this.count,
  });
  
  /// [fileId] Identifier of the file. The file must be located in the TDLib file cache
  final int fileId;

  /// [offset] The offset from which to read the file
  final int offset;

  /// [count] Number of bytes to read. An error will be returned if there are not enough bytes available in the file from the specified position. Pass 0 to read all available data from the specified position
  final int count;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "file_id": "$fileId",
    "offset": "$offset",
    "count": "$count"
  }
	""";
  }
  
  ReadFilePart copyWith({
    int? fileId,
    int? offset,
    int? count,
  }) => ReadFilePart(
    fileId: fileId ?? this.fileId,
    offset: offset ?? this.offset,
    count: count ?? this.count,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'readFilePart';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
