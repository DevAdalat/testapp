part of '../tdlibjson_api.dart';

class GetDeepLinkInfo extends TdFunction {

  /// Returns information about a tg:// deep link. Use "tg://need_update_for_some_feature" or "tg:some_unsupported_feature" for testing. Returns a 404 error for unknown links. Can be called before authorization
  const GetDeepLinkInfo({
    required this.link,
  });
  
  /// [link] The link
  final String link;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "link": "$link"
  }
	""";
  }
  
  GetDeepLinkInfo copyWith({
    String? link,
  }) => GetDeepLinkInfo(
    link: link ?? this.link,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getDeepLinkInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
