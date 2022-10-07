part of '../tdlibjson.dart';

class Files extends TdObject {

  /// Represents a list of files
  const Files({
    required this.files,
    this.extra,
    this.clientId,
  });
  
  /// [files] List of files
  final List<File> files;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Files.fromJson(Map<String, dynamic> json) => Files(
    files: List<File>.from((json['files'] ?? []).map((item) => File.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "files": files.map((i) => i.toJson()).toList(),
    };
  }
  
  Files copyWith({
    List<File>? files,
    dynamic extra,
    int? clientId,
  }) => Files(
    files: files ?? this.files,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'files';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
