part of '../tdlibjson_api.dart';

class GetInternalLinkType extends TdFunction {

  /// Returns information about the type of an internal link. Returns a 404 error if the link is not internal. Can be called before authorization
  const GetInternalLinkType({
    required this.link,
  });
  
  /// [link] The link
  final String link;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "link":"$link"
}
	""";
  }
  
  GetInternalLinkType copyWith({
    String? link,
  }) => GetInternalLinkType(
    link: link ?? this.link,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getInternalLinkType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
