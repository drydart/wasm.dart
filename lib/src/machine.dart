/* This is free and unencumbered software released into the public domain. */

import 'dart:typed_data' show ByteData;

import 'opcode.dart' show Opcode;
import 'stack.dart' show Stack;
import 'store.dart' show Store;

/// Virtual machine with program state.
class Machine {
  /// The machine's implicit stack.
  final Stack stack;

  /// The machine's global state.
  final Store store;

  /// Constructor.
  const Machine({this.stack = const Stack(), this.store = const Store.empty()});

  /// Executes a single instruction.
  void step(final ByteData code) {
    switch (code.getUint8(0)) {
      case Opcode.UNREACHABLE:
        // TODO: unconditional trap
        break;
      case Opcode.NOP:
        // nothing to do
        break;
      case Opcode.BLOCK:
        // TODO
        break;
      case Opcode.LOOP:
        // TODO
        break;
      case Opcode.IF:
        // TODO
        break;
      case Opcode.ELSE:
        // TODO
        break;
      case Opcode.END:
        // TODO
        break;
      case Opcode.BR:
        // TODO
        break;
      case Opcode.BR_IF:
        // TODO
        break;
      case Opcode.BR_TABLE:
        // TODO
        break;
      case Opcode.RETURN:
        // TODO
        break;
      case Opcode.CALL:
        // TODO
        break;
      case Opcode.CALL_INDIRECT:
        // TODO
        break;
      case Opcode.DROP:
        // TODO
        break;
      case Opcode.SELECT:
        // TODO
        break;
      case Opcode.GET_LOCAL:
        // TODO
        break;
      case Opcode.SET_LOCAL:
        // TODO
        break;
      case Opcode.TEE_LOCAL:
        // TODO
        break;
      case Opcode.GET_GLOBAL:
        // TODO
        break;
      case Opcode.SET_GLOBAL:
        // TODO
        break;
      case Opcode.I32_LOAD:
        // TODO
        break;
      case Opcode.I64_LOAD:
        // TODO
        break;
      case Opcode.F32_LOAD:
        // TODO
        break;
      case Opcode.F64_LOAD:
        // TODO
        break;
      case Opcode.I32_LOAD8_S:
        // TODO
        break;
      case Opcode.I32_LOAD8_U:
        // TODO
        break;
      case Opcode.I32_LOAD16_S:
        // TODO
        break;
      case Opcode.I32_LOAD16_U:
        // TODO
        break;
      case Opcode.I64_LOAD8_S:
        // TODO
        break;
      case Opcode.I64_LOAD8_U:
        // TODO
        break;
      case Opcode.I64_LOAD16_S:
        // TODO
        break;
      case Opcode.I64_LOAD16_U:
        // TODO
        break;
      case Opcode.I64_LOAD32_S:
        // TODO
        break;
      case Opcode.I64_LOAD32_U:
        // TODO
        break;
      case Opcode.I32_STORE:
        // TODO
        break;
      case Opcode.I64_STORE:
        // TODO
        break;
      case Opcode.F32_STORE:
        // TODO
        break;
      case Opcode.F64_STORE:
        // TODO
        break;
      case Opcode.I32_STORE8:
        // TODO
        break;
      case Opcode.I32_STORE16:
        // TODO
        break;
      case Opcode.I64_STORE8:
        // TODO
        break;
      case Opcode.I64_STORE16:
        // TODO
        break;
      case Opcode.I64_STORE32:
        // TODO
        break;
      case Opcode.CURRENT_MEMORY:
        // TODO
        break;
      case Opcode.GROW_MEMORY:
        // TODO
        break;
      case Opcode.I32_CONST:
        // TODO
        break;
      case Opcode.I64_CONST:
        // TODO
        break;
      case Opcode.F32_CONST:
        // TODO
        break;
      case Opcode.F64_CONST:
        // TODO
        break;
      case Opcode.I32_EQZ:
        // TODO
        break;
      case Opcode.I32_EQ:
        // TODO
        break;
      case Opcode.I32_NE:
        // TODO
        break;
      case Opcode.I32_LT_S:
        // TODO
        break;
      case Opcode.I32_LT_U:
        // TODO
        break;
      case Opcode.I32_GT_S:
        // TODO
        break;
      case Opcode.I32_GT_U:
        // TODO
        break;
      case Opcode.I32_LE_S:
        // TODO
        break;
      case Opcode.I32_LE_U:
        // TODO
        break;
      case Opcode.I32_GE_S:
        // TODO
        break;
      case Opcode.I32_GE_U:
        // TODO
        break;
      case Opcode.I64_EQZ:
        // TODO
        break;
      case Opcode.I64_EQ:
        // TODO
        break;
      case Opcode.I64_NE:
        // TODO
        break;
      case Opcode.I64_LT_S:
        // TODO
        break;
      case Opcode.I64_LT_U:
        // TODO
        break;
      case Opcode.I64_GT_S:
        // TODO
        break;
      case Opcode.I64_GT_U:
        // TODO
        break;
      case Opcode.I64_LE_S:
        // TODO
        break;
      case Opcode.I64_LE_U:
        // TODO
        break;
      case Opcode.I64_GE_S:
        // TODO
        break;
      case Opcode.I64_GE_U:
        // TODO
        break;
      case Opcode.F32_EQ:
        // TODO
        break;
      case Opcode.F32_NE:
        // TODO
        break;
      case Opcode.F32_LT:
        // TODO
        break;
      case Opcode.F32_GT:
        // TODO
        break;
      case Opcode.F32_LE:
        // TODO
        break;
      case Opcode.F32_GE:
        // TODO
        break;
      case Opcode.F64_EQ:
        // TODO
        break;
      case Opcode.F64_NE:
        // TODO
        break;
      case Opcode.F64_LT:
        // TODO
        break;
      case Opcode.F64_GT:
        // TODO
        break;
      case Opcode.F64_LE:
        // TODO
        break;
      case Opcode.F64_GE:
        // TODO
        break;
      case Opcode.I32_CLZ:
        // TODO
        break;
      case Opcode.I32_CTZ:
        // TODO
        break;
      case Opcode.I32_POPCNT:
        // TODO
        break;
      case Opcode.I32_ADD:
        // TODO
        break;
      case Opcode.I32_SUB:
        // TODO
        break;
      case Opcode.I32_MUL:
        // TODO
        break;
      case Opcode.I32_DIV_S:
        // TODO
        break;
      case Opcode.I32_DIV_U:
        // TODO
        break;
      case Opcode.I32_REM_S:
        // TODO
        break;
      case Opcode.I32_REM_U:
        // TODO
        break;
      case Opcode.I32_AND:
        // TODO
        break;
      case Opcode.I32_OR:
        // TODO
        break;
      case Opcode.I32_XOR:
        // TODO
        break;
      case Opcode.I32_SHL:
        // TODO
        break;
      case Opcode.I32_SHR_S:
        // TODO
        break;
      case Opcode.I32_SHR_U:
        // TODO
        break;
      case Opcode.I32_ROTL:
        // TODO
        break;
      case Opcode.I32_ROTR:
        // TODO
        break;
      case Opcode.I64_CLZ:
        // TODO
        break;
      case Opcode.I64_CTZ:
        // TODO
        break;
      case Opcode.I64_POPCNT:
        // TODO
        break;
      case Opcode.I64_ADD:
        // TODO
        break;
      case Opcode.I64_SUB:
        // TODO
        break;
      case Opcode.I64_MUL:
        // TODO
        break;
      case Opcode.I64_DIV_S:
        // TODO
        break;
      case Opcode.I64_DIV_U:
        // TODO
        break;
      case Opcode.I64_REM_S:
        // TODO
        break;
      case Opcode.I64_REM_U:
        // TODO
        break;
      case Opcode.I64_AND:
        // TODO
        break;
      case Opcode.I64_OR:
        // TODO
        break;
      case Opcode.I64_XOR:
        // TODO
        break;
      case Opcode.I64_SHL:
        // TODO
        break;
      case Opcode.I64_SHR_S:
        // TODO
        break;
      case Opcode.I64_SHR_U:
        // TODO
        break;
      case Opcode.I64_ROTL:
        // TODO
        break;
      case Opcode.I64_ROTR:
        // TODO
        break;
      case Opcode.F32_ABS:
        // TODO
        break;
      case Opcode.F32_NEG:
        // TODO
        break;
      case Opcode.F32_CEIL:
        // TODO
        break;
      case Opcode.F32_FLOOR:
        // TODO
        break;
      case Opcode.F32_TRUNC:
        // TODO
        break;
      case Opcode.F32_NEAREST:
        // TODO
        break;
      case Opcode.F32_SQRT:
        // TODO
        break;
      case Opcode.F32_ADD:
        // TODO
        break;
      case Opcode.F32_SUB:
        // TODO
        break;
      case Opcode.F32_MUL:
        // TODO
        break;
      case Opcode.F32_DIV:
        // TODO
        break;
      case Opcode.F32_MIN:
        // TODO
        break;
      case Opcode.F32_MAX:
        // TODO
        break;
      case Opcode.F32_COPYSIGN:
        // TODO
        break;
      case Opcode.F64_ABS:
        // TODO
        break;
      case Opcode.F64_NEG:
        // TODO
        break;
      case Opcode.F64_CEIL:
        // TODO
        break;
      case Opcode.F64_FLOOR:
        // TODO
        break;
      case Opcode.F64_TRUNC:
        // TODO
        break;
      case Opcode.F64_NEAREST:
        // TODO
        break;
      case Opcode.F64_SQRT:
        // TODO
        break;
      case Opcode.F64_ADD:
        // TODO
        break;
      case Opcode.F64_SUB:
        // TODO
        break;
      case Opcode.F64_MUL:
        // TODO
        break;
      case Opcode.F64_DIV:
        // TODO
        break;
      case Opcode.F64_MIN:
        // TODO
        break;
      case Opcode.F64_MAX:
        // TODO
        break;
      case Opcode.F64_COPYSIGN:
        // TODO
        break;
      case Opcode.I32_WRAP_I64:
        // TODO
        break;
      case Opcode.I32_TRUNC_S_F32:
        // TODO
        break;
      case Opcode.I32_TRUNC_U_F32:
        // TODO
        break;
      case Opcode.I32_TRUNC_S_F64:
        // TODO
        break;
      case Opcode.I32_TRUNC_U_F64:
        // TODO
        break;
      case Opcode.I64_EXTEND_S_I32:
        // TODO
        break;
      case Opcode.I64_EXTEND_U_I32:
        // TODO
        break;
      case Opcode.I64_TRUNC_S_F32:
        // TODO
        break;
      case Opcode.I64_TRUNC_U_F32:
        // TODO
        break;
      case Opcode.I64_TRUNC_S_F64:
        // TODO
        break;
      case Opcode.I64_TRUNC_U_F64:
        // TODO
        break;
      case Opcode.F32_CONVERT_S_I32:
        // TODO
        break;
      case Opcode.F32_CONVERT_U_I32:
        // TODO
        break;
      case Opcode.F32_CONVERT_S_I64:
        // TODO
        break;
      case Opcode.F32_CONVERT_U_I64:
        // TODO
        break;
      case Opcode.F32_DEMOTE_F64:
        // TODO
        break;
      case Opcode.F64_CONVERT_S_I32:
        // TODO
        break;
      case Opcode.F64_CONVERT_U_I32:
        // TODO
        break;
      case Opcode.F64_CONVERT_S_I64:
        // TODO
        break;
      case Opcode.F64_CONVERT_U_I64:
        // TODO
        break;
      case Opcode.F64_PROMOTE_F32:
        // TODO
        break;
      case Opcode.I32_REINTERPRET_F32:
        // TODO
        break;
      case Opcode.I64_REINTERPRET_F64:
        // TODO
        break;
      case Opcode.F32_REINTERPRET_I32:
        // TODO
        break;
      case Opcode.F64_REINTERPRET_I64:
        // TODO
        break;
    }
  }
}
