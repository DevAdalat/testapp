part of '../tdlibjson_api.dart';

class ThumbnailFormat extends TdObject {

  /// Describes format of a thumbnail
  const ThumbnailFormat();
  
  /// a ThumbnailFormat return type can be :
  /// * [ThumbnailFormatJpeg]
  /// * [ThumbnailFormatGif]
  /// * [ThumbnailFormatMpeg4]
  /// * [ThumbnailFormatPng]
  /// * [ThumbnailFormatTgs]
  /// * [ThumbnailFormatWebm]
  /// * [ThumbnailFormatWebp]
  factory ThumbnailFormat.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ThumbnailFormatJpeg.CONSTRUCTOR:
        return ThumbnailFormatJpeg.fromJson(json);
      case ThumbnailFormatGif.CONSTRUCTOR:
        return ThumbnailFormatGif.fromJson(json);
      case ThumbnailFormatMpeg4.CONSTRUCTOR:
        return ThumbnailFormatMpeg4.fromJson(json);
      case ThumbnailFormatPng.CONSTRUCTOR:
        return ThumbnailFormatPng.fromJson(json);
      case ThumbnailFormatTgs.CONSTRUCTOR:
        return ThumbnailFormatTgs.fromJson(json);
      case ThumbnailFormatWebm.CONSTRUCTOR:
        return ThumbnailFormatWebm.fromJson(json);
      case ThumbnailFormatWebp.CONSTRUCTOR:
        return ThumbnailFormatWebp.fromJson(json);
      default:
        return const ThumbnailFormat();
    }
  }
  
  @override
  String toJson() {
	return 
	"""
  {
  
}
	""";
  }
  
  ThumbnailFormat copyWith() => const ThumbnailFormat();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'thumbnailFormat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ThumbnailFormatJpeg extends ThumbnailFormat {

  /// The thumbnail is in JPEG format
  const ThumbnailFormatJpeg();
  
  /// Parse from a json
  factory ThumbnailFormatJpeg.fromJson(Map<String, dynamic> json) => const ThumbnailFormatJpeg();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  ThumbnailFormatJpeg copyWith() => const ThumbnailFormatJpeg();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'thumbnailFormatJpeg';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ThumbnailFormatGif extends ThumbnailFormat {

  /// The thumbnail is in static GIF format. It will be used only for some bot inline results
  const ThumbnailFormatGif();
  
  /// Parse from a json
  factory ThumbnailFormatGif.fromJson(Map<String, dynamic> json) => const ThumbnailFormatGif();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  ThumbnailFormatGif copyWith() => const ThumbnailFormatGif();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'thumbnailFormatGif';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ThumbnailFormatMpeg4 extends ThumbnailFormat {

  /// The thumbnail is in MPEG4 format. It will be used only for some animations and videos
  const ThumbnailFormatMpeg4();
  
  /// Parse from a json
  factory ThumbnailFormatMpeg4.fromJson(Map<String, dynamic> json) => const ThumbnailFormatMpeg4();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  ThumbnailFormatMpeg4 copyWith() => const ThumbnailFormatMpeg4();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'thumbnailFormatMpeg4';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ThumbnailFormatPng extends ThumbnailFormat {

  /// The thumbnail is in PNG format. It will be used only for background patterns
  const ThumbnailFormatPng();
  
  /// Parse from a json
  factory ThumbnailFormatPng.fromJson(Map<String, dynamic> json) => const ThumbnailFormatPng();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  ThumbnailFormatPng copyWith() => const ThumbnailFormatPng();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'thumbnailFormatPng';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ThumbnailFormatTgs extends ThumbnailFormat {

  /// The thumbnail is in TGS format. It will be used only for TGS sticker sets
  const ThumbnailFormatTgs();
  
  /// Parse from a json
  factory ThumbnailFormatTgs.fromJson(Map<String, dynamic> json) => const ThumbnailFormatTgs();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  ThumbnailFormatTgs copyWith() => const ThumbnailFormatTgs();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'thumbnailFormatTgs';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ThumbnailFormatWebm extends ThumbnailFormat {

  /// The thumbnail is in WEBM format. It will be used only for WEBM sticker sets
  const ThumbnailFormatWebm();
  
  /// Parse from a json
  factory ThumbnailFormatWebm.fromJson(Map<String, dynamic> json) => const ThumbnailFormatWebm();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  ThumbnailFormatWebm copyWith() => const ThumbnailFormatWebm();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'thumbnailFormatWebm';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ThumbnailFormatWebp extends ThumbnailFormat {

  /// The thumbnail is in WEBP format. It will be used only for some stickers
  const ThumbnailFormatWebp();
  
  /// Parse from a json
  factory ThumbnailFormatWebp.fromJson(Map<String, dynamic> json) => const ThumbnailFormatWebp();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  ThumbnailFormatWebp copyWith() => const ThumbnailFormatWebp();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'thumbnailFormatWebp';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
