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

  group("Machine", () {
    test("can be constructed", () {
      final Machine vm = Machine();
    });

    test(".step([Opcode.UNREACHABLE]) causes an unconditional trap", () {
      final Machine vm = Machine();
      // TODO
    });

    test(".step([Opcode.NOP]) does nothing", () {
      final Machine vm = Machine();
      // TODO
    });
  });
}
