part of '../tdlibjson_api.dart';

class GetUserPrivacySettingRules extends TdFunction {
  /// Returns the current privacy settings
  const GetUserPrivacySettingRules({
    required this.setting,
  });

  /// [setting] The privacy setting
  final UserPrivacySetting setting;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "setting":"${setting.toJson()}"
}
	""";
  }

  GetUserPrivacySettingRules copyWith({
    UserPrivacySetting? setting,
  }) =>
      GetUserPrivacySettingRules(
        setting: setting ?? this.setting,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getUserPrivacySettingRules';

  @override
  String getConstructor() => CONSTRUCTOR;
}
