part of '../tdlibjson_api.dart';

class Minithumbnail extends TdObject {

  /// Thumbnail image of a very poor quality and low resolution
  const Minithumbnail({
    required this.width,
    required this.height,
    required this.data,
  });
  
  /// [width] Thumbnail width, usually doesn't exceed 40 
  final int width;

  /// [height] Thumbnail height, usually doesn't exceed 40 
  final int height;

  /// [data] The thumbnail in JPEG format
  final String data;
  
  /// Parse from a json
  factory Minithumbnail.fromJson(Map<String, dynamic> json) => Minithumbnail(
    width: json['width'],
    height: json['height'],
    data: json['data'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "width":$width,
   "height":$height,
   "data":"$data"
}
	""";
  }
  
  Minithumbnail copyWith({
    int? width,
    int? height,
    String? data,
  }) => Minithumbnail(
    width: width ?? this.width,
    height: height ?? this.height,
    data: data ?? this.data,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'minithumbnail';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
