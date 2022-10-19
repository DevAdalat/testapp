part of '../tdlibjson_api.dart';

class ToggleDownloadIsPaused extends TdFunction {
  /// Changes pause state of a file in the file download list
  const ToggleDownloadIsPaused({
    required this.fileId,
    required this.isPaused,
  });

  /// [fileId] Identifier of the downloaded file
  final int fileId;

  /// [isPaused] Pass true if the download is paused
  final bool isPaused;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "file_id":$fileId,
   "is_paused":$isPaused
}
	""";
  }

  ToggleDownloadIsPaused copyWith({
    int? fileId,
    bool? isPaused,
  }) =>
      ToggleDownloadIsPaused(
        fileId: fileId ?? this.fileId,
        isPaused: isPaused ?? this.isPaused,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleDownloadIsPaused';

  @override
  String getConstructor() => CONSTRUCTOR;
}
