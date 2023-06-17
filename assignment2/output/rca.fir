circuit rca :
  module fulladder :
    input clock : Clock
    input reset : Reset
    output io : { flip A : UInt<1>, flip B : UInt<1>, flip C : UInt<1>, Sum : UInt<1>, Carry : UInt<1>}

    wire s1 : UInt<2> @[fulladder.scala 17:23]
    node _s1_T = cat(UInt<1>("h0"), io.A) @[Cat.scala 33:92]
    node _s1_T_1 = cat(UInt<1>("h0"), io.B) @[Cat.scala 33:92]
    node _s1_T_2 = add(_s1_T, _s1_T_1) @[fulladder.scala 18:23]
    node _s1_T_3 = tail(_s1_T_2, 1) @[fulladder.scala 18:23]
    node _s1_T_4 = cat(UInt<1>("h0"), io.C) @[Cat.scala 33:92]
    node _s1_T_5 = add(_s1_T_3, _s1_T_4) @[fulladder.scala 18:39]
    node _s1_T_6 = tail(_s1_T_5, 1) @[fulladder.scala 18:39]
    s1 <= _s1_T_6 @[fulladder.scala 18:6]
    node _io_Sum_T = bits(s1, 0, 0) @[fulladder.scala 19:15]
    io.Sum <= _io_Sum_T @[fulladder.scala 19:10]
    node _io_Carry_T = bits(s1, 1, 1) @[fulladder.scala 20:17]
    io.Carry <= _io_Carry_T @[fulladder.scala 20:12]

  module fulladder_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip A : UInt<1>, flip B : UInt<1>, flip C : UInt<1>, Sum : UInt<1>, Carry : UInt<1>}

    wire s1 : UInt<2> @[fulladder.scala 17:23]
    node _s1_T = cat(UInt<1>("h0"), io.A) @[Cat.scala 33:92]
    node _s1_T_1 = cat(UInt<1>("h0"), io.B) @[Cat.scala 33:92]
    node _s1_T_2 = add(_s1_T, _s1_T_1) @[fulladder.scala 18:23]
    node _s1_T_3 = tail(_s1_T_2, 1) @[fulladder.scala 18:23]
    node _s1_T_4 = cat(UInt<1>("h0"), io.C) @[Cat.scala 33:92]
    node _s1_T_5 = add(_s1_T_3, _s1_T_4) @[fulladder.scala 18:39]
    node _s1_T_6 = tail(_s1_T_5, 1) @[fulladder.scala 18:39]
    s1 <= _s1_T_6 @[fulladder.scala 18:6]
    node _io_Sum_T = bits(s1, 0, 0) @[fulladder.scala 19:15]
    io.Sum <= _io_Sum_T @[fulladder.scala 19:10]
    node _io_Carry_T = bits(s1, 1, 1) @[fulladder.scala 20:17]
    io.Carry <= _io_Carry_T @[fulladder.scala 20:12]

  module fulladder_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip A : UInt<1>, flip B : UInt<1>, flip C : UInt<1>, Sum : UInt<1>, Carry : UInt<1>}

    wire s1 : UInt<2> @[fulladder.scala 17:23]
    node _s1_T = cat(UInt<1>("h0"), io.A) @[Cat.scala 33:92]
    node _s1_T_1 = cat(UInt<1>("h0"), io.B) @[Cat.scala 33:92]
    node _s1_T_2 = add(_s1_T, _s1_T_1) @[fulladder.scala 18:23]
    node _s1_T_3 = tail(_s1_T_2, 1) @[fulladder.scala 18:23]
    node _s1_T_4 = cat(UInt<1>("h0"), io.C) @[Cat.scala 33:92]
    node _s1_T_5 = add(_s1_T_3, _s1_T_4) @[fulladder.scala 18:39]
    node _s1_T_6 = tail(_s1_T_5, 1) @[fulladder.scala 18:39]
    s1 <= _s1_T_6 @[fulladder.scala 18:6]
    node _io_Sum_T = bits(s1, 0, 0) @[fulladder.scala 19:15]
    io.Sum <= _io_Sum_T @[fulladder.scala 19:10]
    node _io_Carry_T = bits(s1, 1, 1) @[fulladder.scala 20:17]
    io.Carry <= _io_Carry_T @[fulladder.scala 20:12]

  module fulladder_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip A : UInt<1>, flip B : UInt<1>, flip C : UInt<1>, Sum : UInt<1>, Carry : UInt<1>}

    wire s1 : UInt<2> @[fulladder.scala 17:23]
    node _s1_T = cat(UInt<1>("h0"), io.A) @[Cat.scala 33:92]
    node _s1_T_1 = cat(UInt<1>("h0"), io.B) @[Cat.scala 33:92]
    node _s1_T_2 = add(_s1_T, _s1_T_1) @[fulladder.scala 18:23]
    node _s1_T_3 = tail(_s1_T_2, 1) @[fulladder.scala 18:23]
    node _s1_T_4 = cat(UInt<1>("h0"), io.C) @[Cat.scala 33:92]
    node _s1_T_5 = add(_s1_T_3, _s1_T_4) @[fulladder.scala 18:39]
    node _s1_T_6 = tail(_s1_T_5, 1) @[fulladder.scala 18:39]
    s1 <= _s1_T_6 @[fulladder.scala 18:6]
    node _io_Sum_T = bits(s1, 0, 0) @[fulladder.scala 19:15]
    io.Sum <= _io_Sum_T @[fulladder.scala 19:10]
    node _io_Carry_T = bits(s1, 1, 1) @[fulladder.scala 20:17]
    io.Carry <= _io_Carry_T @[fulladder.scala 20:12]

  module rca :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip A : UInt<4>, flip B : UInt<4>, flip C : UInt<1>, Sum : UInt<4>, Carry : UInt<1>}

    inst fa1 of fulladder @[rca.scala 17:19]
    fa1.clock <= clock
    fa1.reset <= reset
    inst fa2 of fulladder_1 @[rca.scala 18:19]
    fa2.clock <= clock
    fa2.reset <= reset
    inst fa3 of fulladder_2 @[rca.scala 19:19]
    fa3.clock <= clock
    fa3.reset <= reset
    inst fa4 of fulladder_3 @[rca.scala 20:19]
    fa4.clock <= clock
    fa4.reset <= reset
    node _fa1_io_A_T = bits(io.A, 0, 0) @[rca.scala 22:19]
    fa1.io.A <= _fa1_io_A_T @[rca.scala 22:12]
    node _fa1_io_B_T = bits(io.B, 0, 0) @[rca.scala 23:19]
    fa1.io.B <= _fa1_io_B_T @[rca.scala 23:12]
    fa1.io.C <= io.C @[rca.scala 24:12]
    node _fa2_io_A_T = bits(io.A, 1, 1) @[rca.scala 26:19]
    fa2.io.A <= _fa2_io_A_T @[rca.scala 26:12]
    node _fa2_io_B_T = bits(io.B, 1, 1) @[rca.scala 27:19]
    fa2.io.B <= _fa2_io_B_T @[rca.scala 27:12]
    fa2.io.C <= fa1.io.Carry @[rca.scala 28:12]
    node _fa3_io_A_T = bits(io.A, 2, 2) @[rca.scala 30:19]
    fa3.io.A <= _fa3_io_A_T @[rca.scala 30:12]
    node _fa3_io_B_T = bits(io.B, 2, 2) @[rca.scala 31:19]
    fa3.io.B <= _fa3_io_B_T @[rca.scala 31:12]
    fa3.io.C <= fa2.io.Carry @[rca.scala 32:12]
    node _fa4_io_A_T = bits(io.A, 3, 3) @[rca.scala 34:19]
    fa4.io.A <= _fa4_io_A_T @[rca.scala 34:12]
    node _fa4_io_B_T = bits(io.B, 3, 3) @[rca.scala 35:19]
    fa4.io.B <= _fa4_io_B_T @[rca.scala 35:12]
    fa4.io.C <= fa3.io.Carry @[rca.scala 36:12]
    io.Carry <= fa4.io.Carry @[rca.scala 37:12]
    node io_Sum_lo = cat(fa2.io.Sum, fa1.io.Sum) @[Cat.scala 33:92]
    node io_Sum_hi = cat(fa4.io.Sum, fa3.io.Sum) @[Cat.scala 33:92]
    node _io_Sum_T = cat(io_Sum_hi, io_Sum_lo) @[Cat.scala 33:92]
    io.Sum <= _io_Sum_T @[rca.scala 39:10]

