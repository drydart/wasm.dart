/* This is free and unencumbered software released into the public domain. */

/// WebAssembly VM for Dart
library wasm;

import 'dart:typed_data' show ByteBuffer;

import 'src/module.dart' show Module;
import 'src/store.dart' show Store;

export 'src/function.dart' show Function;
export 'src/global.dart' show Global;
export 'src/machine.dart' show Machine;
export 'src/memory.dart' show Memory;
export 'src/module.dart' show Module;
export 'src/stack.dart' show Stack;
export 'src/store.dart' show Store;
export 'src/table.dart' show Table;

/// Returns the empty store.
Store initStore() {
  return Store();
}

/// TODO
Module decodeModule(final ByteBuffer bytes) {
  return Module(); // TODO
}

/// TODO
Module parseModule(final String source) {
  return null; // TODO
}

/// TODO
bool validateModule(final Module module) {
  return true; // TODO
}

/// TODO
Store instantiateModule(final Store store, final Module module) {
  return store; // TODO
}
