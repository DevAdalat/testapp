part of '../tdlibjson_api.dart';

class CleanFileName extends TdFunction {

  /// Removes potentially dangerous characters from the name of a file. The encoding of the file name is supposed to be UTF-8. Returns an empty string on failure. Can be called synchronously
  const CleanFileName({
    required this.fileName,
  });
  
  /// [fileName] File name or path to the file
  final String fileName;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "file_name": "$fileName"
  }
	""";
  }
  
  CleanFileName copyWith({
    String? fileName,
  }) => CleanFileName(
    fileName: fileName ?? this.fileName,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'cleanFileName';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
