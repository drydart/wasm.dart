/* This is free and unencumbered software released into the public domain. */

import 'address.dart';
import 'function.dart' show Function;
import 'global.dart' show Global;
import 'table.dart' show Table;
import 'memory.dart' show Memory;

/// Runtime representation of all global state that can be manipulated by
/// WebAssembly programs.
class Store {
  final List<Function> funcs;
  final List<Table> tables;
  final List<Memory> mems;
  final List<Global> globals;

  const Store({
    this.funcs,
    this.tables,
    this.mems,
    this.globals,
  })
    : assert(funcs != null),
      assert(tables != null),
      assert(mems != null),
      assert(globals != null);

  /// The canonical empty store.
  const Store.empty()
    : funcs   = const <Function>[],
      tables  = const <Table>[],
      mems    = const <Memory>[],
      globals = const <Global>[];

  /// The canonical empty store.
  Store.allocate()
    : funcs   = <Function>[],
      tables  = <Table>[],
      mems    = <Memory>[],
      globals = <Global>[];

  /// Returns true if this store is empty.
  bool get isEmpty => funcs.isEmpty && tables.isEmpty && mems.isEmpty && globals.isEmpty;

  /// Validates this store.
  bool get isValid => true; // TODO

  /// Allocates a new global and returns its address.
  FunctionAddress allocateFunction() {
    final Function func = Function(); // TODO
    funcs.add(func);
    return FunctionAddress(this, funcs.length - 1);
  }

  /// Allocates a new global and returns its address.
  TableAddress allocateTable() {
    final Table table = Table.allocate(<FunctionAddress>[]); // TODO
    tables.add(table);
    return TableAddress(this, tables.length - 1);
  }

  /// Allocates a new memory and returns its address.
  MemoryAddress allocateMemory({final int initialPages = 1}) {
    final Memory mem = Memory(null); // TODO
    mems.add(mem);
    return MemoryAddress(this, mems.length - 1);
  }

  /// Allocates a new global and returns its address.
  GlobalAddress allocateGlobal() {
    final Global global = Global(); // TODO
    globals.add(global);
    return GlobalAddress(this, globals.length - 1);
  }
}
