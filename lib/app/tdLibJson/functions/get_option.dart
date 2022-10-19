part of '../tdlibjson_api.dart';

class GetOption extends TdFunction {
  /// Returns the value of an option by its name. (Check the list of available options on https://core.telegram.org/tdlib/options.) Can be called before authorization. Can be called synchronously for options "version" and "commit_hash"
  const GetOption({
    required this.name,
  });

  /// [name] The name of the option
  final String name;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "name":"$name"
}
	""";
  }

  GetOption copyWith({
    String? name,
  }) =>
      GetOption(
        name: name ?? this.name,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getOption';

  @override
  String getConstructor() => CONSTRUCTOR;
}
