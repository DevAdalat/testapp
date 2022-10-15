import 'dart:ffi';

import 'package:ffi/ffi.dart';

Iterable<String> toStringList(Pointer<Pointer<Utf8>> charPointerPointer) sync* {
  int index = 0;
  while (true) {
    final charPointer = charPointerPointer[index];
    if (charPointer == nullptr) {
      break;
    }
    yield charPointer.toDartString();
    index++;
  }
}
