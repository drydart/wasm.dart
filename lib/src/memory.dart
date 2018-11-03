/* This is free and unencumbered software released into the public domain. */

import 'dart:typed_data';

/// Runtime representation of a linear memory.
class Memory {
  static const int PAGE_SIZE = 65536;

  /// The memory's underlying byte vector.
  final ByteData data;

  /// The memory's optional maximum size, in units of the page size.
  final int maxPages;

  Memory(this.data, {this.maxPages})
    : assert(maxPages == null || (data.lengthInBytes % PAGE_SIZE == 0 && data.lengthInBytes ~/ PAGE_SIZE <= maxPages));

  /// Returns the current size of this memory, in units of the page size.
  int get size => data.lengthInBytes ~/ PAGE_SIZE;
}
