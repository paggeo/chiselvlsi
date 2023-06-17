circuit bcaparallel :
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
    input reset : Reset
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

  module fulladder_4 :
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

  module fulladder_5 :
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

  module fulladder_6 :
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

  module fulladder_7 :
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

  module rca_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip A : UInt<4>, flip B : UInt<4>, flip C : UInt<1>, Sum : UInt<4>, Carry : UInt<1>}

    inst fa1 of fulladder_4 @[rca.scala 17:19]
    fa1.clock <= clock
    fa1.reset <= reset
    inst fa2 of fulladder_5 @[rca.scala 18:19]
    fa2.clock <= clock
    fa2.reset <= reset
    inst fa3 of fulladder_6 @[rca.scala 19:19]
    fa3.clock <= clock
    fa3.reset <= reset
    inst fa4 of fulladder_7 @[rca.scala 20:19]
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

  module bcaserial :
    input clock : Clock
    input reset : Reset
    output io : { flip A : UInt<4>, flip B : UInt<4>, flip C : UInt<1>, Sum : UInt<4>, Carry : UInt<1>}

    inst rca1 of rca @[bcaserial.scala 17:20]
    rca1.clock <= clock
    rca1.reset <= reset
    inst rca2 of rca_1 @[bcaserial.scala 18:20]
    rca2.clock <= clock
    rca2.reset <= reset
    wire rca1_sum : UInt<4> @[bcaserial.scala 20:22]
    wire rca1_carry : UInt<1> @[bcaserial.scala 21:24]
    wire and1 : UInt<1> @[bcaserial.scala 22:18]
    wire and2 : UInt<1> @[bcaserial.scala 23:18]
    wire or1 : UInt<1> @[bcaserial.scala 24:17]
    wire second_input : UInt<4> @[bcaserial.scala 25:26]
    rca1.io.A <= io.A @[bcaserial.scala 27:13]
    rca1.io.B <= io.B @[bcaserial.scala 28:13]
    rca1.io.C <= io.C @[bcaserial.scala 29:13]
    rca1_sum <= rca1.io.Sum @[bcaserial.scala 30:12]
    rca1_carry <= rca1.io.Carry @[bcaserial.scala 31:14]
    node _and1_T = bits(rca1_sum, 3, 3) @[bcaserial.scala 33:19]
    node _and1_T_1 = bits(rca1_sum, 2, 2) @[bcaserial.scala 33:33]
    node _and1_T_2 = and(_and1_T, _and1_T_1) @[bcaserial.scala 33:23]
    and1 <= _and1_T_2 @[bcaserial.scala 33:8]
    node _and2_T = bits(rca1_sum, 3, 3) @[bcaserial.scala 34:19]
    node _and2_T_1 = bits(rca1_sum, 1, 1) @[bcaserial.scala 34:33]
    node _and2_T_2 = and(_and2_T, _and2_T_1) @[bcaserial.scala 34:23]
    and2 <= _and2_T_2 @[bcaserial.scala 34:8]
    node _or1_T = or(and1, and2) @[bcaserial.scala 35:15]
    node _or1_T_1 = or(_or1_T, rca1_carry) @[bcaserial.scala 35:22]
    or1 <= _or1_T_1 @[bcaserial.scala 35:7]
    node second_input_lo = cat(or1, UInt<1>("h0")) @[Cat.scala 33:92]
    node second_input_hi = cat(UInt<1>("h0"), or1) @[Cat.scala 33:92]
    node _second_input_T = cat(second_input_hi, second_input_lo) @[Cat.scala 33:92]
    second_input <= _second_input_T @[bcaserial.scala 36:16]
    rca2.io.A <= second_input @[bcaserial.scala 38:13]
    rca2.io.B <= rca1_sum @[bcaserial.scala 39:13]
    rca2.io.C <= UInt<1>("h0") @[bcaserial.scala 40:13]
    io.Sum <= rca2.io.Sum @[bcaserial.scala 41:10]
    io.Carry <= or1 @[bcaserial.scala 42:12]

  module fulladder_8 :
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

  module fulladder_9 :
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

  module fulladder_10 :
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

  module fulladder_11 :
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

  module rca_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip A : UInt<4>, flip B : UInt<4>, flip C : UInt<1>, Sum : UInt<4>, Carry : UInt<1>}

    inst fa1 of fulladder_8 @[rca.scala 17:19]
    fa1.clock <= clock
    fa1.reset <= reset
    inst fa2 of fulladder_9 @[rca.scala 18:19]
    fa2.clock <= clock
    fa2.reset <= reset
    inst fa3 of fulladder_10 @[rca.scala 19:19]
    fa3.clock <= clock
    fa3.reset <= reset
    inst fa4 of fulladder_11 @[rca.scala 20:19]
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

  module fulladder_12 :
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

  module fulladder_13 :
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

  module fulladder_14 :
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

  module fulladder_15 :
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

  module rca_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip A : UInt<4>, flip B : UInt<4>, flip C : UInt<1>, Sum : UInt<4>, Carry : UInt<1>}

    inst fa1 of fulladder_12 @[rca.scala 17:19]
    fa1.clock <= clock
    fa1.reset <= reset
    inst fa2 of fulladder_13 @[rca.scala 18:19]
    fa2.clock <= clock
    fa2.reset <= reset
    inst fa3 of fulladder_14 @[rca.scala 19:19]
    fa3.clock <= clock
    fa3.reset <= reset
    inst fa4 of fulladder_15 @[rca.scala 20:19]
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

  module bcaserial_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip A : UInt<4>, flip B : UInt<4>, flip C : UInt<1>, Sum : UInt<4>, Carry : UInt<1>}

    inst rca1 of rca_2 @[bcaserial.scala 17:20]
    rca1.clock <= clock
    rca1.reset <= reset
    inst rca2 of rca_3 @[bcaserial.scala 18:20]
    rca2.clock <= clock
    rca2.reset <= reset
    wire rca1_sum : UInt<4> @[bcaserial.scala 20:22]
    wire rca1_carry : UInt<1> @[bcaserial.scala 21:24]
    wire and1 : UInt<1> @[bcaserial.scala 22:18]
    wire and2 : UInt<1> @[bcaserial.scala 23:18]
    wire or1 : UInt<1> @[bcaserial.scala 24:17]
    wire second_input : UInt<4> @[bcaserial.scala 25:26]
    rca1.io.A <= io.A @[bcaserial.scala 27:13]
    rca1.io.B <= io.B @[bcaserial.scala 28:13]
    rca1.io.C <= io.C @[bcaserial.scala 29:13]
    rca1_sum <= rca1.io.Sum @[bcaserial.scala 30:12]
    rca1_carry <= rca1.io.Carry @[bcaserial.scala 31:14]
    node _and1_T = bits(rca1_sum, 3, 3) @[bcaserial.scala 33:19]
    node _and1_T_1 = bits(rca1_sum, 2, 2) @[bcaserial.scala 33:33]
    node _and1_T_2 = and(_and1_T, _and1_T_1) @[bcaserial.scala 33:23]
    and1 <= _and1_T_2 @[bcaserial.scala 33:8]
    node _and2_T = bits(rca1_sum, 3, 3) @[bcaserial.scala 34:19]
    node _and2_T_1 = bits(rca1_sum, 1, 1) @[bcaserial.scala 34:33]
    node _and2_T_2 = and(_and2_T, _and2_T_1) @[bcaserial.scala 34:23]
    and2 <= _and2_T_2 @[bcaserial.scala 34:8]
    node _or1_T = or(and1, and2) @[bcaserial.scala 35:15]
    node _or1_T_1 = or(_or1_T, rca1_carry) @[bcaserial.scala 35:22]
    or1 <= _or1_T_1 @[bcaserial.scala 35:7]
    node second_input_lo = cat(or1, UInt<1>("h0")) @[Cat.scala 33:92]
    node second_input_hi = cat(UInt<1>("h0"), or1) @[Cat.scala 33:92]
    node _second_input_T = cat(second_input_hi, second_input_lo) @[Cat.scala 33:92]
    second_input <= _second_input_T @[bcaserial.scala 36:16]
    rca2.io.A <= second_input @[bcaserial.scala 38:13]
    rca2.io.B <= rca1_sum @[bcaserial.scala 39:13]
    rca2.io.C <= UInt<1>("h0") @[bcaserial.scala 40:13]
    io.Sum <= rca2.io.Sum @[bcaserial.scala 41:10]
    io.Carry <= or1 @[bcaserial.scala 42:12]

  module fulladder_16 :
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

  module fulladder_17 :
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

  module fulladder_18 :
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

  module fulladder_19 :
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

  module rca_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip A : UInt<4>, flip B : UInt<4>, flip C : UInt<1>, Sum : UInt<4>, Carry : UInt<1>}

    inst fa1 of fulladder_16 @[rca.scala 17:19]
    fa1.clock <= clock
    fa1.reset <= reset
    inst fa2 of fulladder_17 @[rca.scala 18:19]
    fa2.clock <= clock
    fa2.reset <= reset
    inst fa3 of fulladder_18 @[rca.scala 19:19]
    fa3.clock <= clock
    fa3.reset <= reset
    inst fa4 of fulladder_19 @[rca.scala 20:19]
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

  module fulladder_20 :
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

  module fulladder_21 :
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

  module fulladder_22 :
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

  module fulladder_23 :
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

  module rca_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip A : UInt<4>, flip B : UInt<4>, flip C : UInt<1>, Sum : UInt<4>, Carry : UInt<1>}

    inst fa1 of fulladder_20 @[rca.scala 17:19]
    fa1.clock <= clock
    fa1.reset <= reset
    inst fa2 of fulladder_21 @[rca.scala 18:19]
    fa2.clock <= clock
    fa2.reset <= reset
    inst fa3 of fulladder_22 @[rca.scala 19:19]
    fa3.clock <= clock
    fa3.reset <= reset
    inst fa4 of fulladder_23 @[rca.scala 20:19]
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

  module bcaserial_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip A : UInt<4>, flip B : UInt<4>, flip C : UInt<1>, Sum : UInt<4>, Carry : UInt<1>}

    inst rca1 of rca_4 @[bcaserial.scala 17:20]
    rca1.clock <= clock
    rca1.reset <= reset
    inst rca2 of rca_5 @[bcaserial.scala 18:20]
    rca2.clock <= clock
    rca2.reset <= reset
    wire rca1_sum : UInt<4> @[bcaserial.scala 20:22]
    wire rca1_carry : UInt<1> @[bcaserial.scala 21:24]
    wire and1 : UInt<1> @[bcaserial.scala 22:18]
    wire and2 : UInt<1> @[bcaserial.scala 23:18]
    wire or1 : UInt<1> @[bcaserial.scala 24:17]
    wire second_input : UInt<4> @[bcaserial.scala 25:26]
    rca1.io.A <= io.A @[bcaserial.scala 27:13]
    rca1.io.B <= io.B @[bcaserial.scala 28:13]
    rca1.io.C <= io.C @[bcaserial.scala 29:13]
    rca1_sum <= rca1.io.Sum @[bcaserial.scala 30:12]
    rca1_carry <= rca1.io.Carry @[bcaserial.scala 31:14]
    node _and1_T = bits(rca1_sum, 3, 3) @[bcaserial.scala 33:19]
    node _and1_T_1 = bits(rca1_sum, 2, 2) @[bcaserial.scala 33:33]
    node _and1_T_2 = and(_and1_T, _and1_T_1) @[bcaserial.scala 33:23]
    and1 <= _and1_T_2 @[bcaserial.scala 33:8]
    node _and2_T = bits(rca1_sum, 3, 3) @[bcaserial.scala 34:19]
    node _and2_T_1 = bits(rca1_sum, 1, 1) @[bcaserial.scala 34:33]
    node _and2_T_2 = and(_and2_T, _and2_T_1) @[bcaserial.scala 34:23]
    and2 <= _and2_T_2 @[bcaserial.scala 34:8]
    node _or1_T = or(and1, and2) @[bcaserial.scala 35:15]
    node _or1_T_1 = or(_or1_T, rca1_carry) @[bcaserial.scala 35:22]
    or1 <= _or1_T_1 @[bcaserial.scala 35:7]
    node second_input_lo = cat(or1, UInt<1>("h0")) @[Cat.scala 33:92]
    node second_input_hi = cat(UInt<1>("h0"), or1) @[Cat.scala 33:92]
    node _second_input_T = cat(second_input_hi, second_input_lo) @[Cat.scala 33:92]
    second_input <= _second_input_T @[bcaserial.scala 36:16]
    rca2.io.A <= second_input @[bcaserial.scala 38:13]
    rca2.io.B <= rca1_sum @[bcaserial.scala 39:13]
    rca2.io.C <= UInt<1>("h0") @[bcaserial.scala 40:13]
    io.Sum <= rca2.io.Sum @[bcaserial.scala 41:10]
    io.Carry <= or1 @[bcaserial.scala 42:12]

  module fulladder_24 :
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

  module fulladder_25 :
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

  module fulladder_26 :
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

  module fulladder_27 :
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

  module rca_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip A : UInt<4>, flip B : UInt<4>, flip C : UInt<1>, Sum : UInt<4>, Carry : UInt<1>}

    inst fa1 of fulladder_24 @[rca.scala 17:19]
    fa1.clock <= clock
    fa1.reset <= reset
    inst fa2 of fulladder_25 @[rca.scala 18:19]
    fa2.clock <= clock
    fa2.reset <= reset
    inst fa3 of fulladder_26 @[rca.scala 19:19]
    fa3.clock <= clock
    fa3.reset <= reset
    inst fa4 of fulladder_27 @[rca.scala 20:19]
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

  module fulladder_28 :
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

  module fulladder_29 :
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

  module fulladder_30 :
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

  module fulladder_31 :
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

  module rca_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip A : UInt<4>, flip B : UInt<4>, flip C : UInt<1>, Sum : UInt<4>, Carry : UInt<1>}

    inst fa1 of fulladder_28 @[rca.scala 17:19]
    fa1.clock <= clock
    fa1.reset <= reset
    inst fa2 of fulladder_29 @[rca.scala 18:19]
    fa2.clock <= clock
    fa2.reset <= reset
    inst fa3 of fulladder_30 @[rca.scala 19:19]
    fa3.clock <= clock
    fa3.reset <= reset
    inst fa4 of fulladder_31 @[rca.scala 20:19]
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

  module bcaserial_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip A : UInt<4>, flip B : UInt<4>, flip C : UInt<1>, Sum : UInt<4>, Carry : UInt<1>}

    inst rca1 of rca_6 @[bcaserial.scala 17:20]
    rca1.clock <= clock
    rca1.reset <= reset
    inst rca2 of rca_7 @[bcaserial.scala 18:20]
    rca2.clock <= clock
    rca2.reset <= reset
    wire rca1_sum : UInt<4> @[bcaserial.scala 20:22]
    wire rca1_carry : UInt<1> @[bcaserial.scala 21:24]
    wire and1 : UInt<1> @[bcaserial.scala 22:18]
    wire and2 : UInt<1> @[bcaserial.scala 23:18]
    wire or1 : UInt<1> @[bcaserial.scala 24:17]
    wire second_input : UInt<4> @[bcaserial.scala 25:26]
    rca1.io.A <= io.A @[bcaserial.scala 27:13]
    rca1.io.B <= io.B @[bcaserial.scala 28:13]
    rca1.io.C <= io.C @[bcaserial.scala 29:13]
    rca1_sum <= rca1.io.Sum @[bcaserial.scala 30:12]
    rca1_carry <= rca1.io.Carry @[bcaserial.scala 31:14]
    node _and1_T = bits(rca1_sum, 3, 3) @[bcaserial.scala 33:19]
    node _and1_T_1 = bits(rca1_sum, 2, 2) @[bcaserial.scala 33:33]
    node _and1_T_2 = and(_and1_T, _and1_T_1) @[bcaserial.scala 33:23]
    and1 <= _and1_T_2 @[bcaserial.scala 33:8]
    node _and2_T = bits(rca1_sum, 3, 3) @[bcaserial.scala 34:19]
    node _and2_T_1 = bits(rca1_sum, 1, 1) @[bcaserial.scala 34:33]
    node _and2_T_2 = and(_and2_T, _and2_T_1) @[bcaserial.scala 34:23]
    and2 <= _and2_T_2 @[bcaserial.scala 34:8]
    node _or1_T = or(and1, and2) @[bcaserial.scala 35:15]
    node _or1_T_1 = or(_or1_T, rca1_carry) @[bcaserial.scala 35:22]
    or1 <= _or1_T_1 @[bcaserial.scala 35:7]
    node second_input_lo = cat(or1, UInt<1>("h0")) @[Cat.scala 33:92]
    node second_input_hi = cat(UInt<1>("h0"), or1) @[Cat.scala 33:92]
    node _second_input_T = cat(second_input_hi, second_input_lo) @[Cat.scala 33:92]
    second_input <= _second_input_T @[bcaserial.scala 36:16]
    rca2.io.A <= second_input @[bcaserial.scala 38:13]
    rca2.io.B <= rca1_sum @[bcaserial.scala 39:13]
    rca2.io.C <= UInt<1>("h0") @[bcaserial.scala 40:13]
    io.Sum <= rca2.io.Sum @[bcaserial.scala 41:10]
    io.Carry <= or1 @[bcaserial.scala 42:12]

  module bcaparallel :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip A : UInt<16>, flip B : UInt<16>, flip C : UInt<1>, Sum : UInt<16>, Carry : UInt<1>}

    inst bca1 of bcaserial @[bcaparallel.scala 17:20]
    bca1.clock <= clock
    bca1.reset <= reset
    inst bca2 of bcaserial_1 @[bcaparallel.scala 18:20]
    bca2.clock <= clock
    bca2.reset <= reset
    inst bca3 of bcaserial_2 @[bcaparallel.scala 19:20]
    bca3.clock <= clock
    bca3.reset <= reset
    inst bca4 of bcaserial_3 @[bcaparallel.scala 20:20]
    bca4.clock <= clock
    bca4.reset <= reset
    wire carry1 : UInt<1> @[bcaparallel.scala 21:20]
    wire carry2 : UInt<1> @[bcaparallel.scala 22:20]
    wire carry3 : UInt<1> @[bcaparallel.scala 23:20]
    wire sum1 : UInt<4> @[bcaparallel.scala 24:18]
    wire sum2 : UInt<4> @[bcaparallel.scala 25:18]
    wire sum3 : UInt<4> @[bcaparallel.scala 26:18]
    wire sum4 : UInt<4> @[bcaparallel.scala 27:18]
    node _bca1_io_A_T = bits(io.A, 3, 0) @[bcaparallel.scala 29:20]
    bca1.io.A <= _bca1_io_A_T @[bcaparallel.scala 29:13]
    node _bca1_io_B_T = bits(io.B, 3, 0) @[bcaparallel.scala 30:20]
    bca1.io.B <= _bca1_io_B_T @[bcaparallel.scala 30:13]
    bca1.io.C <= io.C @[bcaparallel.scala 31:13]
    carry1 <= bca1.io.Carry @[bcaparallel.scala 32:10]
    sum1 <= bca1.io.Sum @[bcaparallel.scala 33:8]
    io.Carry <= carry1 @[bcaparallel.scala 34:12]
    io.Sum <= sum1 @[bcaparallel.scala 35:10]
    node _bca2_io_A_T = bits(io.A, 7, 4) @[bcaparallel.scala 37:20]
    bca2.io.A <= _bca2_io_A_T @[bcaparallel.scala 37:13]
    node _bca2_io_B_T = bits(io.B, 7, 4) @[bcaparallel.scala 38:20]
    bca2.io.B <= _bca2_io_B_T @[bcaparallel.scala 38:13]
    bca2.io.C <= carry1 @[bcaparallel.scala 39:13]
    carry2 <= bca2.io.Carry @[bcaparallel.scala 40:10]
    sum2 <= bca2.io.Sum @[bcaparallel.scala 41:8]
    node _bca3_io_A_T = bits(io.A, 11, 8) @[bcaparallel.scala 44:20]
    bca3.io.A <= _bca3_io_A_T @[bcaparallel.scala 44:13]
    node _bca3_io_B_T = bits(io.B, 11, 8) @[bcaparallel.scala 45:20]
    bca3.io.B <= _bca3_io_B_T @[bcaparallel.scala 45:13]
    bca3.io.C <= carry2 @[bcaparallel.scala 46:13]
    carry3 <= bca3.io.Carry @[bcaparallel.scala 47:10]
    sum3 <= bca3.io.Sum @[bcaparallel.scala 48:8]
    node _bca4_io_A_T = bits(io.A, 15, 12) @[bcaparallel.scala 50:20]
    bca4.io.A <= _bca4_io_A_T @[bcaparallel.scala 50:13]
    node _bca4_io_B_T = bits(io.B, 15, 12) @[bcaparallel.scala 51:20]
    bca4.io.B <= _bca4_io_B_T @[bcaparallel.scala 51:13]
    bca4.io.C <= carry3 @[bcaparallel.scala 52:13]
    io.Carry <= bca4.io.Carry @[bcaparallel.scala 53:12]
    sum4 <= bca4.io.Sum @[bcaparallel.scala 54:8]
    node io_Sum_lo = cat(sum2, sum1) @[Cat.scala 33:92]
    node io_Sum_hi = cat(sum4, sum3) @[Cat.scala 33:92]
    node _io_Sum_T = cat(io_Sum_hi, io_Sum_lo) @[Cat.scala 33:92]
    io.Sum <= _io_Sum_T @[bcaparallel.scala 56:10]

