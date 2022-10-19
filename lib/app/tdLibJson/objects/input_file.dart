part of '../tdlibjson_api.dart';

class InputFile extends TdObject {
  /// Points to a file
  const InputFile();

  /// a InputFile return type can be :
  /// * [InputFileId]
  /// * [InputFileRemote]
  /// * [InputFileLocal]
  /// * [InputFileGenerated]
  factory InputFile.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputFileId.CONSTRUCTOR:
        return InputFileId.fromJson(json);
      case InputFileRemote.CONSTRUCTOR:
        return InputFileRemote.fromJson(json);
      case InputFileLocal.CONSTRUCTOR:
        return InputFileLocal.fromJson(json);
      case InputFileGenerated.CONSTRUCTOR:
        return InputFileGenerated.fromJson(json);
      default:
        return const InputFile();
    }
  }

  @override
  String toJson() {
    return """
  {
  
}
	""";
  }

  InputFile copyWith() => const InputFile();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'inputFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputFileId extends InputFile {
  /// A file defined by its unique inputFileId
  const InputFileId({
    required this.id,
  });

  /// [id] Unique file identifier
  final int id;

  /// Parse from a json
  factory InputFileId.fromJson(Map<String, dynamic> json) => InputFileId(
        id: json['id'],
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "id":$id
}
	""";
  }

  @override
  InputFileId copyWith({
    int? id,
  }) =>
      InputFileId(
        id: id ?? this.id,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'inputFileId';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputFileRemote extends InputFile {
  /// A file defined by its remote inputFileRemote. The remote inputFileRemote is guaranteed to be usable only if the corresponding file is still accessible to the user and known to TDLib.. For example, if the file is from a message, then the message must be not deleted and accessible to the user. If the file database is disabled, then the corresponding object with the file must be preloaded by the application
  const InputFileRemote({
    required this.id,
  });

  /// [id] Remote file identifier
  final String id;

  /// Parse from a json
  factory InputFileRemote.fromJson(Map<String, dynamic> json) =>
      InputFileRemote(
        id: json['id'],
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "id":"$id"
}
	""";
  }

  @override
  InputFileRemote copyWith({
    String? id,
  }) =>
      InputFileRemote(
        id: id ?? this.id,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'inputFileRemote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputFileLocal extends InputFile {
  /// A file defined by a local path
  const InputFileLocal({
    required this.path,
  });

  /// [path] Local path to the file
  final String path;

  /// Parse from a json
  factory InputFileLocal.fromJson(Map<String, dynamic> json) => InputFileLocal(
        path: json['path'],
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "path":"$path"
}
	""";
  }

  @override
  InputFileLocal copyWith({
    String? path,
  }) =>
      InputFileLocal(
        path: path ?? this.path,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'inputFileLocal';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputFileGenerated extends InputFile {
  /// A file generated by the application
  const InputFileGenerated({
    required this.originalPath,
    required this.conversion,
    required this.expectedSize,
  });

  /// [originalPath] Local path to a file from which the file is generated; may be empty if there is no such file
  final String originalPath;

  /// [conversion] String specifying the conversion applied to the original file; must be persistent across application restarts. Conversions beginning with '#' are reserved for internal TDLib usage
  final String conversion;

  /// [expectedSize] Expected size of the generated file, in bytes; 0 if unknown
  final int expectedSize;

  /// Parse from a json
  factory InputFileGenerated.fromJson(Map<String, dynamic> json) =>
      InputFileGenerated(
        originalPath: json['original_path'],
        conversion: json['conversion'],
        expectedSize: json['expected_size'],
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "original_path":"$originalPath",
   "conversion":"$conversion",
   "expected_size":$expectedSize
}
	""";
  }

  @override
  InputFileGenerated copyWith({
    String? originalPath,
    String? conversion,
    int? expectedSize,
  }) =>
      InputFileGenerated(
        originalPath: originalPath ?? this.originalPath,
        conversion: conversion ?? this.conversion,
        expectedSize: expectedSize ?? this.expectedSize,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'inputFileGenerated';

  @override
  String getConstructor() => CONSTRUCTOR;
}
