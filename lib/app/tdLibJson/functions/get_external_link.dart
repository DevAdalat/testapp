part of '../tdlibjson_api.dart';

class GetExternalLink extends TdFunction {

  /// Returns an HTTP URL which can be used to automatically authorize the current user on a website after clicking an HTTP link. Use the method getExternalLinkInfo to find whether a prior user confirmation is needed
  const GetExternalLink({
    required this.link,
    required this.allowWriteAccess,
  });
  
  /// [link] The HTTP link
  final String link;

  /// [allowWriteAccess] Pass true if the current user allowed the bot, returned in getExternalLinkInfo, to send them messages
  final bool allowWriteAccess;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "link":"$link",
   "allow_write_access":$allowWriteAccess
}
	""";
  }
  
  GetExternalLink copyWith({
    String? link,
    bool? allowWriteAccess,
  }) => GetExternalLink(
    link: link ?? this.link,
    allowWriteAccess: allowWriteAccess ?? this.allowWriteAccess,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getExternalLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
