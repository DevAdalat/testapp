part of '../tdlibjson_api.dart';

class CloseWebApp extends TdFunction {
  /// Informs TDLib that a previously opened Web App was closed
  const CloseWebApp({
    required this.webAppLaunchId,
  });

  /// [webAppLaunchId] Identifier of Web App launch, received from openWebApp
  final int webAppLaunchId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "web_app_launch_id": webAppLaunchId,
      "@extra": extra,
    };
  }

  CloseWebApp copyWith({
    int? webAppLaunchId,
  }) =>
      CloseWebApp(
        webAppLaunchId: webAppLaunchId ?? this.webAppLaunchId,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'closeWebApp';

  @override
  String getConstructor() => CONSTRUCTOR;
}
