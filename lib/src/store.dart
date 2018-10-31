/* This is free and unencumbered software released into the public domain. */

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
    this.funcs   = const <Function>[],
    this.tables  = const <Table>[],
    this.mems    = const <Memory>[],
    this.globals = const <Global>[],
  });
}
