part of '../tdlibjson_api.dart';

class StorageStatisticsByFileType extends TdObject {

  /// Contains the storage usage statistics for a specific file type
  const StorageStatisticsByFileType({
    required this.fileType,
    required this.size,
    required this.count,
  });
  
  /// [fileType] File type 
  final FileType fileType;

  /// [size] Total size of the files, in bytes 
  final int size;

  /// [count] Total number of files
  final int count;
  
  /// Parse from a json
  factory StorageStatisticsByFileType.fromJson(Map<String, dynamic> json) => StorageStatisticsByFileType(
    fileType: FileType.fromJson(json['file_type']),
    size: json['size'],
    count: json['count'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "file_type": "${fileType.toJson()}",
    "size": "$size",
    "count": "$count"
  }
	""";
  }
  
  StorageStatisticsByFileType copyWith({
    FileType? fileType,
    int? size,
    int? count,
  }) => StorageStatisticsByFileType(
    fileType: fileType ?? this.fileType,
    size: size ?? this.size,
    count: count ?? this.count,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'storageStatisticsByFileType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
