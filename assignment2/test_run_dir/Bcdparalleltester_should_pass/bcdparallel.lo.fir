circuit bcdparallel :
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

  module bcdserial :
    input clock : Clock
    input reset : UInt<1>
    input io_A : UInt<4>
    input io_B : UInt<4>
    input io_C : UInt<1>
    output io_Sum : UInt<4>
    output io_Carry : UInt<1>

    inst rca1 of rca @[bcdserial.scala 17:20]
    inst rca2 of rca @[bcdserial.scala 18:20]
    node rca1_sum = rca1.io_Sum @[bcdserial.scala 20:22 30:12]
    node _and1_T = bits(rca1_sum, 3, 3) @[bcdserial.scala 33:19]
    node _and1_T_1 = bits(rca1_sum, 2, 2) @[bcdserial.scala 33:33]
    node _and1_T_2 = and(_and1_T, _and1_T_1) @[bcdserial.scala 33:23]
    node _and2_T = bits(rca1_sum, 3, 3) @[bcdserial.scala 34:19]
    node _and2_T_1 = bits(rca1_sum, 1, 1) @[bcdserial.scala 34:33]
    node _and2_T_2 = and(_and2_T, _and2_T_1) @[bcdserial.scala 34:23]
    node and1 = _and1_T_2 @[bcdserial.scala 22:18 33:8]
    node and2 = _and2_T_2 @[bcdserial.scala 23:18 34:8]
    node _or1_T = or(and1, and2) @[bcdserial.scala 35:15]
    node rca1_carry = rca1.io_Carry @[bcdserial.scala 21:24 31:14]
    node _or1_T_1 = or(_or1_T, rca1_carry) @[bcdserial.scala 35:22]
    node or1 = _or1_T_1 @[bcdserial.scala 24:17 35:7]
    node second_input_lo = cat(or1, UInt<1>("h0")) @[Cat.scala 33:92]
    node second_input_hi = cat(UInt<1>("h0"), or1) @[Cat.scala 33:92]
    node _second_input_T = cat(second_input_hi, second_input_lo) @[Cat.scala 33:92]
    node second_input = _second_input_T @[bcdserial.scala 25:26 36:16]
    io_Sum <= rca2.io_Sum @[bcdserial.scala 41:10]
    io_Carry <= or1 @[bcdserial.scala 42:12]
    rca1.clock <= clock
    rca1.reset <= reset
    rca1.io_A <= io_A @[bcdserial.scala 27:13]
    rca1.io_B <= io_B @[bcdserial.scala 28:13]
    rca1.io_C <= io_C @[bcdserial.scala 29:13]
    rca2.clock <= clock
    rca2.reset <= reset
    rca2.io_A <= second_input @[bcdserial.scala 38:13]
    rca2.io_B <= rca1_sum @[bcdserial.scala 39:13]
    rca2.io_C <= UInt<1>("h0") @[bcdserial.scala 40:13]

  module bcdparallel :
    input clock : Clock
    input reset : UInt<1>
    input io_A : UInt<16>
    input io_B : UInt<16>
    input io_C : UInt<1>
    output io_Sum : UInt<16>
    output io_Carry : UInt<1>

    inst bcd1 of bcdserial @[bcdparallel.scala 17:20]
    inst bcd2 of bcdserial @[bcdparallel.scala 18:20]
    inst bcd3 of bcdserial @[bcdparallel.scala 19:20]
    inst bcd4 of bcdserial @[bcdparallel.scala 20:20]
    node _bcd1_io_A_T = bits(io_A, 3, 0) @[bcdparallel.scala 29:20]
    node _bcd1_io_B_T = bits(io_B, 3, 0) @[bcdparallel.scala 30:20]
    node _bcd2_io_A_T = bits(io_A, 7, 4) @[bcdparallel.scala 37:20]
    node _bcd2_io_B_T = bits(io_B, 7, 4) @[bcdparallel.scala 38:20]
    node _bcd3_io_A_T = bits(io_A, 11, 8) @[bcdparallel.scala 44:20]
    node _bcd3_io_B_T = bits(io_B, 11, 8) @[bcdparallel.scala 45:20]
    node _bcd4_io_A_T = bits(io_A, 15, 12) @[bcdparallel.scala 50:20]
    node _bcd4_io_B_T = bits(io_B, 15, 12) @[bcdparallel.scala 51:20]
    node sum2 = bcd2.io_Sum @[bcdparallel.scala 25:18 41:8]
    node sum1 = bcd1.io_Sum @[bcdparallel.scala 24:18 33:8]
    node io_Sum_lo = cat(sum2, sum1) @[Cat.scala 33:92]
    node sum4 = bcd4.io_Sum @[bcdparallel.scala 27:18 54:8]
    node sum3 = bcd3.io_Sum @[bcdparallel.scala 26:18 48:8]
    node io_Sum_hi = cat(sum4, sum3) @[Cat.scala 33:92]
    node _io_Sum_T = cat(io_Sum_hi, io_Sum_lo) @[Cat.scala 33:92]
    node carry1 = bcd1.io_Carry @[bcdparallel.scala 21:20 32:10]
    node carry2 = bcd2.io_Carry @[bcdparallel.scala 22:20 40:10]
    node carry3 = bcd3.io_Carry @[bcdparallel.scala 23:20 47:10]
    io_Sum <= _io_Sum_T @[bcdparallel.scala 56:10]
    io_Carry <= bcd4.io_Carry @[bcdparallel.scala 53:12]
    bcd1.clock <= clock
    bcd1.reset <= reset
    bcd1.io_A <= _bcd1_io_A_T @[bcdparallel.scala 29:13]
    bcd1.io_B <= _bcd1_io_B_T @[bcdparallel.scala 30:13]
    bcd1.io_C <= io_C @[bcdparallel.scala 31:13]
    bcd2.clock <= clock
    bcd2.reset <= reset
    bcd2.io_A <= _bcd2_io_A_T @[bcdparallel.scala 37:13]
    bcd2.io_B <= _bcd2_io_B_T @[bcdparallel.scala 38:13]
    bcd2.io_C <= carry1 @[bcdparallel.scala 39:13]
    bcd3.clock <= clock
    bcd3.reset <= reset
    bcd3.io_A <= _bcd3_io_A_T @[bcdparallel.scala 44:13]
    bcd3.io_B <= _bcd3_io_B_T @[bcdparallel.scala 45:13]
    bcd3.io_C <= carry2 @[bcdparallel.scala 46:13]
    bcd4.clock <= clock
    bcd4.reset <= reset
    bcd4.io_A <= _bcd4_io_A_T @[bcdparallel.scala 50:13]
    bcd4.io_B <= _bcd4_io_B_T @[bcdparallel.scala 51:13]
    bcd4.io_C <= carry3 @[bcdparallel.scala 52:13]
