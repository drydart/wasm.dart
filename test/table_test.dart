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

  group("Table", () {
    test("can be constructed", () {
      final Table table = Table(elem: [], max: 0);
      expect(table.elem, isEmpty);
      expect(table.max, isZero);
    });
  });
}
