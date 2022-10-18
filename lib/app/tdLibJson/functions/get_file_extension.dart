part of '../tdlibjson_api.dart';

class GetFileExtension extends TdFunction {

  /// Returns the extension of a file, guessed by its MIME type. Returns an empty string on failure. Can be called synchronously
  const GetFileExtension({
    required this.mimeType,
  });
  
  /// [mimeType] The MIME type of the file
  final String mimeType;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "mime_type": "$mimeType"
  }
	""";
  }
  
  GetFileExtension copyWith({
    String? mimeType,
  }) => GetFileExtension(
    mimeType: mimeType ?? this.mimeType,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getFileExtension';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
