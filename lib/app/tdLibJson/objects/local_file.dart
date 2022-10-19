part of '../tdlibjson_api.dart';

class LocalFile extends TdObject {
  /// Represents a local file
  const LocalFile({
    required this.path,
    required this.canBeDownloaded,
    required this.canBeDeleted,
    required this.isDownloadingActive,
    required this.isDownloadingCompleted,
    required this.downloadOffset,
    required this.downloadedPrefixSize,
    required this.downloadedSize,
  });

  /// [path] Local path to the locally available file part; may be empty
  final String path;

  /// [canBeDownloaded] True, if it is possible to download or generate the file
  final bool canBeDownloaded;

  /// [canBeDeleted] True, if the file can be deleted
  final bool canBeDeleted;

  /// [isDownloadingActive] True, if the file is currently being downloaded (or a local copy is being generated by some other means)
  final bool isDownloadingActive;

  /// [isDownloadingCompleted] True, if the local copy is fully available
  final bool isDownloadingCompleted;

  /// [downloadOffset] Download will be started from this offset. downloaded_prefix_size is calculated from this offset
  final int downloadOffset;

  /// [downloadedPrefixSize] If is_downloading_completed is false, then only some prefix of the file starting from download_offset is ready to be read. downloaded_prefix_size is the size of that prefix in bytes
  final int downloadedPrefixSize;

  /// [downloadedSize] Total downloaded file size, in bytes. Can be used only for calculating download progress. The actual file size may be bigger, and some parts of it may contain garbage
  final int downloadedSize;

  /// Parse from a json
  factory LocalFile.fromJson(Map<String, dynamic> json) => LocalFile(
        path: json['path'],
        canBeDownloaded: json['can_be_downloaded'],
        canBeDeleted: json['can_be_deleted'],
        isDownloadingActive: json['is_downloading_active'],
        isDownloadingCompleted: json['is_downloading_completed'],
        downloadOffset: json['download_offset'],
        downloadedPrefixSize: json['downloaded_prefix_size'],
        downloadedSize: json['downloaded_size'],
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "path":"$path",
   "can_be_downloaded":$canBeDownloaded,
   "can_be_deleted":$canBeDeleted,
   "is_downloading_active":$isDownloadingActive,
   "is_downloading_completed":$isDownloadingCompleted,
   "download_offset":$downloadOffset,
   "downloaded_prefix_size":$downloadedPrefixSize,
   "downloaded_size":$downloadedSize
}
	""";
  }

  LocalFile copyWith({
    String? path,
    bool? canBeDownloaded,
    bool? canBeDeleted,
    bool? isDownloadingActive,
    bool? isDownloadingCompleted,
    int? downloadOffset,
    int? downloadedPrefixSize,
    int? downloadedSize,
  }) =>
      LocalFile(
        path: path ?? this.path,
        canBeDownloaded: canBeDownloaded ?? this.canBeDownloaded,
        canBeDeleted: canBeDeleted ?? this.canBeDeleted,
        isDownloadingActive: isDownloadingActive ?? this.isDownloadingActive,
        isDownloadingCompleted:
            isDownloadingCompleted ?? this.isDownloadingCompleted,
        downloadOffset: downloadOffset ?? this.downloadOffset,
        downloadedPrefixSize: downloadedPrefixSize ?? this.downloadedPrefixSize,
        downloadedSize: downloadedSize ?? this.downloadedSize,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'localFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
