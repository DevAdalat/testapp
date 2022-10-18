part of '../tdlibjson_api.dart';

class SetOption extends TdFunction {

  /// Sets the value of an option. (Check the list of available options on https://core.telegram.org/tdlib/options.) Only writable options can be set. Can be called before authorization
  const SetOption({
    required this.name,
    this.value,
  });
  
  /// [name] The name of the option
  final String name;

  /// [value] The new value of the option; pass null to reset option value to a default value
  final OptionValue? value;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "name": "$name",
    "value": "${value?.toJson()}"
  }
	""";
  }
  
  SetOption copyWith({
    String? name,
    OptionValue? value,
  }) => SetOption(
    name: name ?? this.name,
    value: value ?? this.value,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setOption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
