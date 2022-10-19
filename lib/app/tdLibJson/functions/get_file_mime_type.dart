part of '../tdlibjson_api.dart';

class GetFileMimeType extends TdFunction {
  /// Returns the MIME type of a file, guessed by its extension. Returns an empty string on failure. Can be called synchronously
  const GetFileMimeType({
    required this.fileName,
  });

  /// [fileName] The name of the file or path to the file
  final String fileName;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "file_name":"$fileName"
}
	""";
  }

  GetFileMimeType copyWith({
    String? fileName,
  }) =>
      GetFileMimeType(
        fileName: fileName ?? this.fileName,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getFileMimeType';

  @override
  String getConstructor() => CONSTRUCTOR;
}
