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
}
