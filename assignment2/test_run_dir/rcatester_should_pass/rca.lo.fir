circuit rca :
  module fulladder :
    input clock : Clock
    input reset : UInt<1>
    input io_A : UInt<1>
    input io_B : UInt<1>
    input io_C : UInt<1>
    output io_Sum : UInt<1>
    output io_Carry : UInt<1>

    node _s1_T = cat(UInt<1>("h0"), io_A) @[Cat.scala 33:92]
    node _s1_T_1 = cat(UInt<1>("h0"), io_B) @[Cat.scala 33:92]
    node _s1_T_2 = add(_s1_T, _s1_T_1) @[fulladder.scala 18:23]
    node _s1_T_3 = tail(_s1_T_2, 1) @[fulladder.scala 18:23]
    node _s1_T_4 = cat(UInt<1>("h0"), io_C) @[Cat.scala 33:92]
    node _s1_T_5 = add(_s1_T_3, _s1_T_4) @[fulladder.scala 18:39]
    node _s1_T_6 = tail(_s1_T_5, 1) @[fulladder.scala 18:39]
    node s1 = _s1_T_6 @[fulladder.scala 17:23 18:6]
    node _io_Sum_T = bits(s1, 0, 0) @[fulladder.scala 19:15]
    node _io_Carry_T = bits(s1, 1, 1) @[fulladder.scala 20:17]
    io_Sum <= _io_Sum_T @[fulladder.scala 19:10]
    io_Carry <= _io_Carry_T @[fulladder.scala 20:12]

  module rca :
    input clock : Clock
    input reset : UInt<1>
    input io_A : UInt<4>
    input io_B : UInt<4>
    input io_C : UInt<1>
    output io_Sum : UInt<4>
    output io_Carry : UInt<1>

    inst fa1 of fulladder @[rca.scala 17:19]
    inst fa2 of fulladder @[rca.scala 18:19]
    inst fa3 of fulladder @[rca.scala 19:19]
    inst fa4 of fulladder @[rca.scala 20:19]
    node _fa1_io_A_T = bits(io_A, 0, 0) @[rca.scala 22:19]
    node _fa1_io_B_T = bits(io_B, 0, 0) @[rca.scala 23:19]
    node _fa2_io_A_T = bits(io_A, 1, 1) @[rca.scala 26:19]
    node _fa2_io_B_T = bits(io_B, 1, 1) @[rca.scala 27:19]
    node _fa3_io_A_T = bits(io_A, 2, 2) @[rca.scala 30:19]
    node _fa3_io_B_T = bits(io_B, 2, 2) @[rca.scala 31:19]
    node _fa4_io_A_T = bits(io_A, 3, 3) @[rca.scala 34:19]
    node _fa4_io_B_T = bits(io_B, 3, 3) @[rca.scala 35:19]
    node io_Sum_lo = cat(fa2.io_Sum, fa1.io_Sum) @[Cat.scala 33:92]
    node io_Sum_hi = cat(fa4.io_Sum, fa3.io_Sum) @[Cat.scala 33:92]
    node _io_Sum_T = cat(io_Sum_hi, io_Sum_lo) @[Cat.scala 33:92]
    io_Sum <= _io_Sum_T @[rca.scala 39:10]
    io_Carry <= fa4.io_Carry @[rca.scala 37:12]
    fa1.clock <= clock
    fa1.reset <= reset
    fa1.io_A <= _fa1_io_A_T @[rca.scala 22:12]
    fa1.io_B <= _fa1_io_B_T @[rca.scala 23:12]
    fa1.io_C <= io_C @[rca.scala 24:12]
    fa2.clock <= clock
    fa2.reset <= reset
    fa2.io_A <= _fa2_io_A_T @[rca.scala 26:12]
    fa2.io_B <= _fa2_io_B_T @[rca.scala 27:12]
    fa2.io_C <= fa1.io_Carry @[rca.scala 28:12]
    fa3.clock <= clock
    fa3.reset <= reset
    fa3.io_A <= _fa3_io_A_T @[rca.scala 30:12]
    fa3.io_B <= _fa3_io_B_T @[rca.scala 31:12]
    fa3.io_C <= fa2.io_Carry @[rca.scala 32:12]
    fa4.clock <= clock
    fa4.reset <= reset
    fa4.io_A <= _fa4_io_A_T @[rca.scala 34:12]
    fa4.io_B <= _fa4_io_B_T @[rca.scala 35:12]
    fa4.io_C <= fa3.io_Carry @[rca.scala 36:12]
