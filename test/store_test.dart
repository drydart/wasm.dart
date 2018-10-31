/* This is free and unencumbered software released into the public domain. */

import 'package:test/test.dart';
import 'package:wasm/wasm.dart';

void main() {
  Store store;

  setUp(() {
    store = Store.allocate();
  });

  tearDown(() {
    store = null;
  });

  group("Store", () {
    test("can be constructed", () {
      expect(store.funcs, isEmpty);
      expect(store.tables, isEmpty);
      expect(store.mems, isEmpty);
      expect(store.globals, isEmpty);
      expect(store, isEmpty);
    });

    test(".isValid() returns true for valid stores", () {
      expect(Store.empty().isValid, isTrue);
    });

    test(".isValid() returns false for invalid stores", () {
      // TODO
    });

    test(".allocateFunction() returns a valid address", () {
      expect(store.allocateFunction().isValid, isTrue);
    });

    test(".allocateTable() returns a valid address", () {
      expect(store.allocateTable().isValid, isTrue);
    });

    test(".allocateMemory() returns a valid address", () {
      expect(store.allocateMemory().isValid, isTrue);
    });

    test(".allocateGlobal() returns a valid address", () {
      expect(store.allocateGlobal().isValid, isTrue);
    });
  });
}
