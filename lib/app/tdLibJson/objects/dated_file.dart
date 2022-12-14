part of '../tdlibjson_api.dart';

class DatedFile extends TdObject {

  /// File with the date it was uploaded
  const DatedFile({
    required this.file,
    required this.date,
  });
  
  /// [file] The file 
  final File file;

  /// [date] Point in time (Unix timestamp) when the file was uploaded
  final int date;
  
  /// Parse from a json
  factory DatedFile.fromJson(Map<String, dynamic> json) => DatedFile(
    file: File.fromJson(json['file']),
    date: json['date'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "file":${file.toJson()},
   "date":$date
}
	""";
  }
  
  DatedFile copyWith({
    File? file,
    int? date,
  }) => DatedFile(
    file: file ?? this.file,
    date: date ?? this.date,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'datedFile';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
