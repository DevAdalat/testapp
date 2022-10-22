part of '../tdlibjson_api.dart';

class FinishFileGeneration extends TdFunction {
  /// Finishes the file generation
  const FinishFileGeneration({
    required this.generationId,
    this.error,
  });

  /// [generationId] The identifier of the generation process
  final int generationId;

  /// [error] If passed, the file generation has failed and must be terminated; pass null if the file generation succeeded
  final TdError? error;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "generation_id":$generationId,
   "error":${error?.toJson()}
}
	""";
  }

  FinishFileGeneration copyWith({
    int? generationId,
    TdError? error,
  }) =>
      FinishFileGeneration(
        generationId: generationId ?? this.generationId,
        error: error ?? this.error,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'finishFileGeneration';

  @override
  String getConstructor() => CONSTRUCTOR;
}
