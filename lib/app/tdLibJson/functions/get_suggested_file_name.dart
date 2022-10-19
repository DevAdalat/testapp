part of '../tdlibjson_api.dart';

class GetSuggestedFileName extends TdFunction {
  /// Returns suggested name for saving a file in a given directory
  const GetSuggestedFileName({
    required this.fileId,
    required this.directory,
  });

  /// [fileId] Identifier of the file
  final int fileId;

  /// [directory] Directory in which the file is supposed to be saved
  final String directory;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "file_id":$fileId,
   "directory":"$directory"
}
	""";
  }

  GetSuggestedFileName copyWith({
    int? fileId,
    String? directory,
  }) =>
      GetSuggestedFileName(
        fileId: fileId ?? this.fileId,
        directory: directory ?? this.directory,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getSuggestedFileName';

  @override
  String getConstructor() => CONSTRUCTOR;
}
