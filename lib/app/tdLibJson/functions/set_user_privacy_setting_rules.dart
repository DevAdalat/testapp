part of '../tdlibjson_api.dart';

class SetUserPrivacySettingRules extends TdFunction {
  /// Changes user privacy settings
  const SetUserPrivacySettingRules({
    required this.setting,
    required this.rules,
  });

  /// [setting] The privacy setting
  final UserPrivacySetting setting;

  /// [rules] The new privacy rules
  final UserPrivacySettingRules rules;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "setting":${setting.toJson()},
   "rules":${rules.toJson()}
}
	""";
  }

  SetUserPrivacySettingRules copyWith({
    UserPrivacySetting? setting,
    UserPrivacySettingRules? rules,
  }) =>
      SetUserPrivacySettingRules(
        setting: setting ?? this.setting,
        rules: rules ?? this.rules,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setUserPrivacySettingRules';

  @override
  String getConstructor() => CONSTRUCTOR;
}
