part of '../tdlibjson_api.dart';

class CancelDownloadFile extends TdFunction {

  /// Stops the downloading of a file. If a file has already been downloaded, does nothing
  const CancelDownloadFile({
    required this.fileId,
    required this.onlyIfPending,
  });
  
  /// [fileId] Identifier of a file to stop downloading 
  final int fileId;

  /// [onlyIfPending] Pass true to stop downloading only if it hasn't been started, i.e. request hasn't been sent to server
  final bool onlyIfPending;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "file_id": "$fileId",
    "only_if_pending": $onlyIfPending
  }
	""";
  }
  
  CancelDownloadFile copyWith({
    int? fileId,
    bool? onlyIfPending,
  }) => CancelDownloadFile(
    fileId: fileId ?? this.fileId,
    onlyIfPending: onlyIfPending ?? this.onlyIfPending,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'cancelDownloadFile';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
