circuit halfadder :
  module halfadder :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip A : UInt<1>, flip B : UInt<1>, Sum : UInt<1>, Carry : UInt<1>}

    node _io_Sum_T = xor(io.A, io.B) @[halfadder.scala 16:18]
    io.Sum <= _io_Sum_T @[halfadder.scala 16:10]
    node _io_Carry_T = and(io.A, io.B) @[halfadder.scala 17:20]
    io.Carry <= _io_Carry_T @[halfadder.scala 17:12]

