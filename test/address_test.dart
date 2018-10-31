/* This is free and unencumbered software released into the public domain. */

import 'package:test/test.dart';
import 'package:wasm/wasm.dart';

void main() {
  Store store;

  setUp(() {
    store = Store();
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
      //expect(FunctionAddress(store, 0).isValid, isTrue); // TODO
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
      //expect(TableAddress(store, 0).isValid, isTrue); // TODO
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
      //expect(MemoryAddress(store, 0).isValid, isTrue); // TODO
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
      //expect(GlobalAddress(store, 0).isValid, isTrue); // TODO
    });

    test(".isValid() returns false for invalid global addresses", () {
      expect(GlobalAddress(store, 0).isValid, isFalse);
    });
  });
}
