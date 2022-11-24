part of '../tdlibjson_api.dart';

class GetWebPageInstantView extends TdFunction {

  /// Returns an instant view version of a web page if available. Returns a 404 error if the web page has no instant view page
  const GetWebPageInstantView({
    required this.url,
    required this.forceFull,
  });
  
  /// [url] The web page URL 
  final String url;

  /// [forceFull] Pass true to get full instant view for the web page
  final bool forceFull;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "url":"$url",
   "force_full":$forceFull
}
	""";
  }
  
  GetWebPageInstantView copyWith({
    String? url,
    bool? forceFull,
  }) => GetWebPageInstantView(
    url: url ?? this.url,
    forceFull: forceFull ?? this.forceFull,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getWebPageInstantView';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
