circuit fulladder :
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
