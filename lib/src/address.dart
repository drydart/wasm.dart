/* This is free and unencumbered software released into the public domain. */

import 'function.dart' show Function;
import 'global.dart' show Global;
import 'memory.dart' show Memory;
import 'table.dart' show Table;
import 'store.dart' show Store;

/// Abstract address of an instance in a store.
abstract class Address {
  /// The store this address belongs to.
  final Store store;

  /// The index into the respective store component.
  final int index;

  const Address(this.store, this.index)
    : assert(store != null),
      assert(index >= 0);

  /// Validates this address against the current store state.
  bool get isValid;

  /// Dereferences this address.
  Object dereference();
}

/// Function address of a function instance in a store.
class FunctionAddress extends Address {
  const FunctionAddress(final Store store, final int index) : super(store, index);

  @override
  bool get isValid => index >= 0 && index < store.funcs.length;

  @override
  Function dereference() => store.funcs[index];
}

/// Table address of a table instance in a store.
class TableAddress extends Address {
  const TableAddress(final Store store, final int index) : super(store, index);

  @override
  bool get isValid => index >= 0 && index < store.tables.length;

  @override
  Table dereference() => store.tables[index];
}

/// Memory address of a memory instance in a store.
class MemoryAddress extends Address {
  const MemoryAddress(final Store store, final int index) : super(store, index);

  @override
  bool get isValid => index >= 0 && index < store.mems.length;

  @override
  Memory dereference() => store.mems[index];
}

/// Global address of a global instance in a store.
class GlobalAddress extends Address {
  const GlobalAddress(final Store store, final int index) : super(store, index);

  @override
  bool get isValid => index >= 0 && index < store.globals.length;

  @override
  Global dereference() => store.globals[index];
}
