part of '../tdlibjson.dart';

class SearchBackground extends TdFunction {

  /// Searches for a background by its name
  const SearchBackground({
    required this.name,
  });
  
  /// [name] The name of the background
  final String name;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "@extra": extra,
    };
  }
  
  SearchBackground copyWith({
    String? name,
  }) => SearchBackground(
    name: name ?? this.name,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'searchBackground';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
