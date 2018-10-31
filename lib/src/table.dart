/* This is free and unencumbered software released into the public domain. */

import 'address.dart' show FunctionAddress;

/// Runtime representation of a WebAssembly table.
class Table {
  /// The table's vector of function elements.
  final List<FunctionAddress> elem;

  /// The table's optional maximum size.
  final int max;

  const Table({this.elem = const <FunctionAddress>[], this.max})
    : assert(elem != null),
      assert(max == null || max >= 0);

  /// The canonical empty table.
  const Table.empty() : elem = const <FunctionAddress>[], max = 0;

  /// The canonical empty table.
  Table.allocate(final List<FunctionAddress> elem)
    : elem = elem, max = 0 {}
}
