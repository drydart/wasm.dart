/* This is free and unencumbered software released into the public domain. */

import 'stack.dart' show Stack;
import 'store.dart' show Store;

/// Virtual machine with program state.
class Machine {
  /// The machine's implicit stack.
  final Stack stack;

  /// The machine's global state.
  final Store store;

  const Machine({this.stack = const Stack(), this.store = const Store.empty()});
}
