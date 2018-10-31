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

  group("FunctionAddress", () {
    test("can be constructed", () {
      final FunctionAddress addr = FunctionAddress(store, 0);
      expect(addr.store, equals(store));
      expect(addr.index, isZero);
    });

    test(".isValid() returns true for valid function addresses", () {
      final FunctionAddress addr = store.allocateFunction();
      expect(addr.index, isZero);
      expect(FunctionAddress(store, 0).isValid, isTrue);
    });

    test(".isValid() returns false for invalid function addresses", () {
      expect(FunctionAddress(store, 0).isValid, isFalse);
    });
  });

  group("TableAddress", () {
    test("can be constructed", () {
      final TableAddress addr = TableAddress(store, 0);
      expect(addr.store, equals(store));
      expect(addr.index, isZero);
    });

    test(".isValid() returns true for valid table addresses", () {
      final TableAddress addr = store.allocateTable();
      expect(addr.index, isZero);
      expect(TableAddress(store, 0).isValid, isTrue);
    });

    test(".isValid() returns false for invalid table addresses", () {
      expect(TableAddress(store, 0).isValid, isFalse);
    });
  });

  group("MemoryAddress", () {
    test("can be constructed", () {
      final MemoryAddress addr = MemoryAddress(store, 0);
      expect(addr.store, equals(store));
      expect(addr.index, isZero);
    });

    test(".isValid() returns true for valid memory addresses", () {
      final MemoryAddress addr = store.allocateMemory();
      expect(addr.index, isZero);
      expect(MemoryAddress(store, 0).isValid, isTrue);
    });

    test(".isValid() returns false for invalid memory addresses", () {
      expect(MemoryAddress(store, 0).isValid, isFalse);
    });
  });

  group("GlobalAddress", () {
    test("can be constructed", () {
      final GlobalAddress addr = GlobalAddress(store, 0);
      expect(addr.store, equals(store));
      expect(addr.index, isZero);
    });

    test(".isValid() returns true for valid global addresses", () {
      final GlobalAddress addr = store.allocateGlobal();
      expect(addr.index, isZero);
      expect(GlobalAddress(store, 0).isValid, isTrue);
    });

    test(".isValid() returns false for invalid global addresses", () {
      expect(GlobalAddress(store, 0).isValid, isFalse);
    });
  });
}
