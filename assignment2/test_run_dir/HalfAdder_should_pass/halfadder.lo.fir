circuit halfadder :
  module halfadder :
    input clock : Clock
    input reset : UInt<1>
    input io_A : UInt<1>
    input io_B : UInt<1>
    output io_Sum : UInt<1>
    output io_Carry : UInt<1>

    node _io_Sum_T = xor(io_A, io_B) @[halfadder.scala 16:18]
    node _io_Carry_T = and(io_A, io_B) @[halfadder.scala 17:20]
    io_Sum <= _io_Sum_T @[halfadder.scala 16:10]
    io_Carry <= _io_Carry_T @[halfadder.scala 17:12]
