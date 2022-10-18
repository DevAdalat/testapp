part of '../tdlibjson_api.dart';

class GetMessageLinkInfo extends TdFunction {

  /// Returns information about a public or private message link. Can be called for any internal link of the type internalLinkTypeMessage
  const GetMessageLinkInfo({
    required this.url,
  });
  
  /// [url] The message link
  final String url;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "url": "$url"
  }
	""";
  }
  
  GetMessageLinkInfo copyWith({
    String? url,
  }) => GetMessageLinkInfo(
    url: url ?? this.url,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getMessageLinkInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
