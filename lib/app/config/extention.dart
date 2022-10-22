import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';

extension ToCString on String {
  ffi.Pointer<ffi.Char> toCString() {
    return toNativeUtf8().cast<ffi.Char>();
  }
}
