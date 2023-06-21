circuit multpipe :
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

  module multpipe :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip A : UInt<4>, flip B : UInt<4>, P : UInt<1>[8]}

    inst fulladder of fulladder @[multpipe.scala 15:33]
    fulladder.clock <= clock
    fulladder.reset <= reset
    inst fulladder_1 of fulladder_1 @[multpipe.scala 15:33]
    fulladder_1.clock <= clock
    fulladder_1.reset <= reset
    inst fulladder_2 of fulladder_2 @[multpipe.scala 15:33]
    fulladder_2.clock <= clock
    fulladder_2.reset <= reset
    inst fulladder_3 of fulladder_3 @[multpipe.scala 15:33]
    fulladder_3.clock <= clock
    fulladder_3.reset <= reset
    inst fulladder_4 of fulladder_4 @[multpipe.scala 15:33]
    fulladder_4.clock <= clock
    fulladder_4.reset <= reset
    inst fulladder_5 of fulladder_5 @[multpipe.scala 15:33]
    fulladder_5.clock <= clock
    fulladder_5.reset <= reset
    inst fulladder_6 of fulladder_6 @[multpipe.scala 15:33]
    fulladder_6.clock <= clock
    fulladder_6.reset <= reset
    inst fulladder_7 of fulladder_7 @[multpipe.scala 15:33]
    fulladder_7.clock <= clock
    fulladder_7.reset <= reset
    inst fulladder_8 of fulladder_8 @[multpipe.scala 15:33]
    fulladder_8.clock <= clock
    fulladder_8.reset <= reset
    inst fulladder_9 of fulladder_9 @[multpipe.scala 15:33]
    fulladder_9.clock <= clock
    fulladder_9.reset <= reset
    inst fulladder_10 of fulladder_10 @[multpipe.scala 15:33]
    fulladder_10.clock <= clock
    fulladder_10.reset <= reset
    inst fulladder_11 of fulladder_11 @[multpipe.scala 15:33]
    fulladder_11.clock <= clock
    fulladder_11.reset <= reset
    inst fulladder_12 of fulladder_12 @[multpipe.scala 15:33]
    fulladder_12.clock <= clock
    fulladder_12.reset <= reset
    inst fulladder_13 of fulladder_13 @[multpipe.scala 15:33]
    fulladder_13.clock <= clock
    fulladder_13.reset <= reset
    wire _sarr_WIRE : UInt<4>[4] @[multpipe.scala 18:49]
    _sarr_WIRE[0] <= UInt<4>("h0") @[multpipe.scala 18:49]
    _sarr_WIRE[1] <= UInt<4>("h0") @[multpipe.scala 18:49]
    _sarr_WIRE[2] <= UInt<4>("h0") @[multpipe.scala 18:49]
    _sarr_WIRE[3] <= UInt<4>("h0") @[multpipe.scala 18:49]
    wire _sarr_WIRE_1 : UInt<4>[4] @[multpipe.scala 18:49]
    _sarr_WIRE_1[0] <= UInt<4>("h0") @[multpipe.scala 18:49]
    _sarr_WIRE_1[1] <= UInt<4>("h0") @[multpipe.scala 18:49]
    _sarr_WIRE_1[2] <= UInt<4>("h0") @[multpipe.scala 18:49]
    _sarr_WIRE_1[3] <= UInt<4>("h0") @[multpipe.scala 18:49]
    wire _sarr_WIRE_2 : UInt<4>[4] @[multpipe.scala 18:49]
    _sarr_WIRE_2[0] <= UInt<4>("h0") @[multpipe.scala 18:49]
    _sarr_WIRE_2[1] <= UInt<4>("h0") @[multpipe.scala 18:49]
    _sarr_WIRE_2[2] <= UInt<4>("h0") @[multpipe.scala 18:49]
    _sarr_WIRE_2[3] <= UInt<4>("h0") @[multpipe.scala 18:49]
    wire _sarr_WIRE_3 : UInt<4>[4] @[multpipe.scala 18:49]
    _sarr_WIRE_3[0] <= UInt<4>("h0") @[multpipe.scala 18:49]
    _sarr_WIRE_3[1] <= UInt<4>("h0") @[multpipe.scala 18:49]
    _sarr_WIRE_3[2] <= UInt<4>("h0") @[multpipe.scala 18:49]
    _sarr_WIRE_3[3] <= UInt<4>("h0") @[multpipe.scala 18:49]
    wire _sarr_WIRE_4 : UInt<4>[4][4] @[multpipe.scala 18:29]
    _sarr_WIRE_4[0] <= _sarr_WIRE @[multpipe.scala 18:29]
    _sarr_WIRE_4[1] <= _sarr_WIRE_1 @[multpipe.scala 18:29]
    _sarr_WIRE_4[2] <= _sarr_WIRE_2 @[multpipe.scala 18:29]
    _sarr_WIRE_4[3] <= _sarr_WIRE_3 @[multpipe.scala 18:29]
    reg sarr : UInt<4>[4][4], clock with :
      reset => (reset, _sarr_WIRE_4) @[multpipe.scala 18:21]
    wire _c1_var_WIRE : UInt<1>[3] @[multpipe.scala 19:31]
    _c1_var_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 19:31]
    _c1_var_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 19:31]
    _c1_var_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 19:31]
    reg c1_var : UInt<1>[3], clock with :
      reset => (reset, _c1_var_WIRE) @[multpipe.scala 19:23]
    wire c1_temp : UInt<1>[3] @[multpipe.scala 20:25]
    c1_temp[0] <= UInt<1>("h0") @[multpipe.scala 20:25]
    c1_temp[1] <= UInt<1>("h0") @[multpipe.scala 20:25]
    c1_temp[2] <= UInt<1>("h0") @[multpipe.scala 20:25]
    wire _c2_var_WIRE : UInt<1>[3] @[multpipe.scala 21:31]
    _c2_var_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 21:31]
    _c2_var_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 21:31]
    _c2_var_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 21:31]
    reg c2_var : UInt<1>[3], clock with :
      reset => (reset, _c2_var_WIRE) @[multpipe.scala 21:23]
    wire c2_temp : UInt<1>[3] @[multpipe.scala 22:25]
    c2_temp[0] <= UInt<1>("h0") @[multpipe.scala 22:25]
    c2_temp[1] <= UInt<1>("h0") @[multpipe.scala 22:25]
    c2_temp[2] <= UInt<1>("h0") @[multpipe.scala 22:25]
    wire _c_var_WIRE : UInt<1>[5] @[multpipe.scala 23:30]
    _c_var_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 23:30]
    _c_var_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 23:30]
    _c_var_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 23:30]
    _c_var_WIRE[3] <= UInt<1>("h0") @[multpipe.scala 23:30]
    _c_var_WIRE[4] <= UInt<1>("h0") @[multpipe.scala 23:30]
    reg c_var : UInt<1>[5], clock with :
      reset => (reset, _c_var_WIRE) @[multpipe.scala 23:22]
    wire c_temp : UInt<1>[5] @[multpipe.scala 24:24]
    c_temp[0] <= UInt<1>("h0") @[multpipe.scala 24:24]
    c_temp[1] <= UInt<1>("h0") @[multpipe.scala 24:24]
    c_temp[2] <= UInt<1>("h0") @[multpipe.scala 24:24]
    c_temp[3] <= UInt<1>("h0") @[multpipe.scala 24:24]
    c_temp[4] <= UInt<1>("h0") @[multpipe.scala 24:24]
    wire carry : UInt<1>[1] @[multpipe.scala 25:23]
    carry[0] <= UInt<1>("h0") @[multpipe.scala 25:23]
    c1_var <= c1_temp @[multpipe.scala 27:10]
    c2_var <= c2_temp @[multpipe.scala 28:10]
    c_var <= c_temp @[multpipe.scala 29:10]
    wire s1_temp : UInt<1>[6] @[multpipe.scala 32:25]
    s1_temp[0] <= UInt<1>("h0") @[multpipe.scala 32:25]
    s1_temp[1] <= UInt<1>("h0") @[multpipe.scala 32:25]
    s1_temp[2] <= UInt<1>("h0") @[multpipe.scala 32:25]
    s1_temp[3] <= UInt<1>("h0") @[multpipe.scala 32:25]
    s1_temp[4] <= UInt<1>("h0") @[multpipe.scala 32:25]
    s1_temp[5] <= UInt<1>("h0") @[multpipe.scala 32:25]
    wire _s1_var0_WIRE : UInt<1>[6] @[multpipe.scala 33:32]
    _s1_var0_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 33:32]
    _s1_var0_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 33:32]
    _s1_var0_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 33:32]
    _s1_var0_WIRE[3] <= UInt<1>("h0") @[multpipe.scala 33:32]
    _s1_var0_WIRE[4] <= UInt<1>("h0") @[multpipe.scala 33:32]
    _s1_var0_WIRE[5] <= UInt<1>("h0") @[multpipe.scala 33:32]
    reg s1_var0 : UInt<1>[6], clock with :
      reset => (reset, _s1_var0_WIRE) @[multpipe.scala 33:24]
    wire _s1_var1_WIRE : UInt<1>[6] @[multpipe.scala 34:32]
    _s1_var1_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 34:32]
    _s1_var1_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 34:32]
    _s1_var1_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 34:32]
    _s1_var1_WIRE[3] <= UInt<1>("h0") @[multpipe.scala 34:32]
    _s1_var1_WIRE[4] <= UInt<1>("h0") @[multpipe.scala 34:32]
    _s1_var1_WIRE[5] <= UInt<1>("h0") @[multpipe.scala 34:32]
    reg s1_var1 : UInt<1>[6], clock with :
      reset => (reset, _s1_var1_WIRE) @[multpipe.scala 34:24]
    wire _s1_var2_WIRE : UInt<1>[6] @[multpipe.scala 35:32]
    _s1_var2_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 35:32]
    _s1_var2_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 35:32]
    _s1_var2_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 35:32]
    _s1_var2_WIRE[3] <= UInt<1>("h0") @[multpipe.scala 35:32]
    _s1_var2_WIRE[4] <= UInt<1>("h0") @[multpipe.scala 35:32]
    _s1_var2_WIRE[5] <= UInt<1>("h0") @[multpipe.scala 35:32]
    reg s1_var2 : UInt<1>[6], clock with :
      reset => (reset, _s1_var2_WIRE) @[multpipe.scala 35:24]
    wire _s1_var3_WIRE : UInt<1>[6] @[multpipe.scala 36:32]
    _s1_var3_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 36:32]
    _s1_var3_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 36:32]
    _s1_var3_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 36:32]
    _s1_var3_WIRE[3] <= UInt<1>("h0") @[multpipe.scala 36:32]
    _s1_var3_WIRE[4] <= UInt<1>("h0") @[multpipe.scala 36:32]
    _s1_var3_WIRE[5] <= UInt<1>("h0") @[multpipe.scala 36:32]
    reg s1_var3 : UInt<1>[6], clock with :
      reset => (reset, _s1_var3_WIRE) @[multpipe.scala 36:24]
    s1_var0 <= s1_temp @[multpipe.scala 37:11]
    s1_var1 <= s1_var0 @[multpipe.scala 38:11]
    s1_var2 <= s1_var1 @[multpipe.scala 39:11]
    s1_var3 <= s1_var2 @[multpipe.scala 40:11]
    wire s2_temp : UInt<1>[6] @[multpipe.scala 42:25]
    s2_temp[0] <= UInt<1>("h0") @[multpipe.scala 42:25]
    s2_temp[1] <= UInt<1>("h0") @[multpipe.scala 42:25]
    s2_temp[2] <= UInt<1>("h0") @[multpipe.scala 42:25]
    s2_temp[3] <= UInt<1>("h0") @[multpipe.scala 42:25]
    s2_temp[4] <= UInt<1>("h0") @[multpipe.scala 42:25]
    s2_temp[5] <= UInt<1>("h0") @[multpipe.scala 42:25]
    wire _s2_var0_WIRE : UInt<1>[6] @[multpipe.scala 43:32]
    _s2_var0_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 43:32]
    _s2_var0_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 43:32]
    _s2_var0_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 43:32]
    _s2_var0_WIRE[3] <= UInt<1>("h0") @[multpipe.scala 43:32]
    _s2_var0_WIRE[4] <= UInt<1>("h0") @[multpipe.scala 43:32]
    _s2_var0_WIRE[5] <= UInt<1>("h0") @[multpipe.scala 43:32]
    reg s2_var0 : UInt<1>[6], clock with :
      reset => (reset, _s2_var0_WIRE) @[multpipe.scala 43:24]
    wire _s2_var1_WIRE : UInt<1>[6] @[multpipe.scala 44:32]
    _s2_var1_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 44:32]
    _s2_var1_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 44:32]
    _s2_var1_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 44:32]
    _s2_var1_WIRE[3] <= UInt<1>("h0") @[multpipe.scala 44:32]
    _s2_var1_WIRE[4] <= UInt<1>("h0") @[multpipe.scala 44:32]
    _s2_var1_WIRE[5] <= UInt<1>("h0") @[multpipe.scala 44:32]
    reg s2_var1 : UInt<1>[6], clock with :
      reset => (reset, _s2_var1_WIRE) @[multpipe.scala 44:24]
    wire _s2_var2_WIRE : UInt<1>[6] @[multpipe.scala 45:32]
    _s2_var2_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 45:32]
    _s2_var2_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 45:32]
    _s2_var2_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 45:32]
    _s2_var2_WIRE[3] <= UInt<1>("h0") @[multpipe.scala 45:32]
    _s2_var2_WIRE[4] <= UInt<1>("h0") @[multpipe.scala 45:32]
    _s2_var2_WIRE[5] <= UInt<1>("h0") @[multpipe.scala 45:32]
    reg s2_var2 : UInt<1>[6], clock with :
      reset => (reset, _s2_var2_WIRE) @[multpipe.scala 45:24]
    wire _s2_var3_WIRE : UInt<1>[6] @[multpipe.scala 46:32]
    _s2_var3_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 46:32]
    _s2_var3_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 46:32]
    _s2_var3_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 46:32]
    _s2_var3_WIRE[3] <= UInt<1>("h0") @[multpipe.scala 46:32]
    _s2_var3_WIRE[4] <= UInt<1>("h0") @[multpipe.scala 46:32]
    _s2_var3_WIRE[5] <= UInt<1>("h0") @[multpipe.scala 46:32]
    reg s2_var3 : UInt<1>[6], clock with :
      reset => (reset, _s2_var3_WIRE) @[multpipe.scala 46:24]
    wire _s2_var4_WIRE : UInt<1>[6] @[multpipe.scala 47:32]
    _s2_var4_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 47:32]
    _s2_var4_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 47:32]
    _s2_var4_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 47:32]
    _s2_var4_WIRE[3] <= UInt<1>("h0") @[multpipe.scala 47:32]
    _s2_var4_WIRE[4] <= UInt<1>("h0") @[multpipe.scala 47:32]
    _s2_var4_WIRE[5] <= UInt<1>("h0") @[multpipe.scala 47:32]
    reg s2_var4 : UInt<1>[6], clock with :
      reset => (reset, _s2_var4_WIRE) @[multpipe.scala 47:24]
    wire _s2_var5_WIRE : UInt<1>[6] @[multpipe.scala 48:32]
    _s2_var5_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 48:32]
    _s2_var5_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 48:32]
    _s2_var5_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 48:32]
    _s2_var5_WIRE[3] <= UInt<1>("h0") @[multpipe.scala 48:32]
    _s2_var5_WIRE[4] <= UInt<1>("h0") @[multpipe.scala 48:32]
    _s2_var5_WIRE[5] <= UInt<1>("h0") @[multpipe.scala 48:32]
    reg s2_var5 : UInt<1>[6], clock with :
      reset => (reset, _s2_var5_WIRE) @[multpipe.scala 48:24]
    s2_var0 <= s2_temp @[multpipe.scala 49:11]
    s2_var1 <= s2_var0 @[multpipe.scala 50:11]
    s2_var2 <= s2_var1 @[multpipe.scala 51:11]
    s2_var3 <= s2_var2 @[multpipe.scala 52:11]
    s2_var4 <= s2_var3 @[multpipe.scala 53:11]
    s2_var5 <= s2_var4 @[multpipe.scala 54:11]
    wire _teliko1_WIRE : UInt<1>[7] @[multpipe.scala 56:32]
    _teliko1_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 56:32]
    _teliko1_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 56:32]
    _teliko1_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 56:32]
    _teliko1_WIRE[3] <= UInt<1>("h0") @[multpipe.scala 56:32]
    _teliko1_WIRE[4] <= UInt<1>("h0") @[multpipe.scala 56:32]
    _teliko1_WIRE[5] <= UInt<1>("h0") @[multpipe.scala 56:32]
    _teliko1_WIRE[6] <= UInt<1>("h0") @[multpipe.scala 56:32]
    reg teliko1 : UInt<1>[7], clock with :
      reset => (reset, _teliko1_WIRE) @[multpipe.scala 56:24]
    wire _teliko2_WIRE : UInt<1>[7] @[multpipe.scala 57:32]
    _teliko2_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 57:32]
    _teliko2_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 57:32]
    _teliko2_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 57:32]
    _teliko2_WIRE[3] <= UInt<1>("h0") @[multpipe.scala 57:32]
    _teliko2_WIRE[4] <= UInt<1>("h0") @[multpipe.scala 57:32]
    _teliko2_WIRE[5] <= UInt<1>("h0") @[multpipe.scala 57:32]
    _teliko2_WIRE[6] <= UInt<1>("h0") @[multpipe.scala 57:32]
    reg teliko2 : UInt<1>[7], clock with :
      reset => (reset, _teliko2_WIRE) @[multpipe.scala 57:24]
    wire _teliko3_WIRE : UInt<1>[7] @[multpipe.scala 58:32]
    _teliko3_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 58:32]
    _teliko3_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 58:32]
    _teliko3_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 58:32]
    _teliko3_WIRE[3] <= UInt<1>("h0") @[multpipe.scala 58:32]
    _teliko3_WIRE[4] <= UInt<1>("h0") @[multpipe.scala 58:32]
    _teliko3_WIRE[5] <= UInt<1>("h0") @[multpipe.scala 58:32]
    _teliko3_WIRE[6] <= UInt<1>("h0") @[multpipe.scala 58:32]
    reg teliko3 : UInt<1>[7], clock with :
      reset => (reset, _teliko3_WIRE) @[multpipe.scala 58:24]
    wire _teliko4_WIRE : UInt<1>[7] @[multpipe.scala 59:32]
    _teliko4_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 59:32]
    _teliko4_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 59:32]
    _teliko4_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 59:32]
    _teliko4_WIRE[3] <= UInt<1>("h0") @[multpipe.scala 59:32]
    _teliko4_WIRE[4] <= UInt<1>("h0") @[multpipe.scala 59:32]
    _teliko4_WIRE[5] <= UInt<1>("h0") @[multpipe.scala 59:32]
    _teliko4_WIRE[6] <= UInt<1>("h0") @[multpipe.scala 59:32]
    reg teliko4 : UInt<1>[7], clock with :
      reset => (reset, _teliko4_WIRE) @[multpipe.scala 59:24]
    wire _teliko5_WIRE : UInt<1>[7] @[multpipe.scala 60:32]
    _teliko5_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 60:32]
    _teliko5_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 60:32]
    _teliko5_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 60:32]
    _teliko5_WIRE[3] <= UInt<1>("h0") @[multpipe.scala 60:32]
    _teliko5_WIRE[4] <= UInt<1>("h0") @[multpipe.scala 60:32]
    _teliko5_WIRE[5] <= UInt<1>("h0") @[multpipe.scala 60:32]
    _teliko5_WIRE[6] <= UInt<1>("h0") @[multpipe.scala 60:32]
    reg teliko5 : UInt<1>[7], clock with :
      reset => (reset, _teliko5_WIRE) @[multpipe.scala 60:24]
    wire _teliko6_WIRE : UInt<1>[7] @[multpipe.scala 61:32]
    _teliko6_WIRE[0] <= UInt<1>("h0") @[multpipe.scala 61:32]
    _teliko6_WIRE[1] <= UInt<1>("h0") @[multpipe.scala 61:32]
    _teliko6_WIRE[2] <= UInt<1>("h0") @[multpipe.scala 61:32]
    _teliko6_WIRE[3] <= UInt<1>("h0") @[multpipe.scala 61:32]
    _teliko6_WIRE[4] <= UInt<1>("h0") @[multpipe.scala 61:32]
    _teliko6_WIRE[5] <= UInt<1>("h0") @[multpipe.scala 61:32]
    _teliko6_WIRE[6] <= UInt<1>("h0") @[multpipe.scala 61:32]
    reg teliko6 : UInt<1>[7], clock with :
      reset => (reset, _teliko6_WIRE) @[multpipe.scala 61:24]
    io.P[6] <= teliko1[6] @[multpipe.scala 63:11]
    teliko1[5] <= teliko2[5] @[multpipe.scala 65:14]
    io.P[5] <= teliko1[5] @[multpipe.scala 66:11]
    teliko2[4] <= teliko3[4] @[multpipe.scala 68:14]
    teliko1[4] <= teliko2[4] @[multpipe.scala 69:14]
    io.P[4] <= teliko1[4] @[multpipe.scala 70:11]
    teliko3[3] <= teliko4[3] @[multpipe.scala 72:14]
    teliko2[3] <= teliko3[3] @[multpipe.scala 73:14]
    teliko1[3] <= teliko2[3] @[multpipe.scala 74:14]
    io.P[3] <= teliko1[3] @[multpipe.scala 75:14]
    teliko4[2] <= teliko5[2] @[multpipe.scala 77:14]
    teliko3[2] <= teliko4[2] @[multpipe.scala 78:14]
    teliko2[2] <= teliko3[2] @[multpipe.scala 79:14]
    teliko1[2] <= teliko2[2] @[multpipe.scala 80:14]
    io.P[2] <= teliko1[2] @[multpipe.scala 81:14]
    teliko5[1] <= s1_var2[1] @[multpipe.scala 83:14]
    teliko4[1] <= teliko5[1] @[multpipe.scala 84:14]
    teliko3[1] <= teliko4[1] @[multpipe.scala 85:14]
    teliko2[1] <= teliko3[1] @[multpipe.scala 86:14]
    teliko1[1] <= teliko2[1] @[multpipe.scala 87:14]
    io.P[1] <= teliko1[1] @[multpipe.scala 88:14]
    teliko6[0] <= s1_var2[0] @[multpipe.scala 90:14]
    teliko5[0] <= teliko6[0] @[multpipe.scala 91:14]
    teliko4[0] <= teliko5[0] @[multpipe.scala 92:14]
    teliko3[0] <= teliko4[0] @[multpipe.scala 93:14]
    teliko2[0] <= teliko3[0] @[multpipe.scala 94:14]
    teliko1[0] <= teliko2[0] @[multpipe.scala 95:14]
    io.P[0] <= teliko1[0] @[multpipe.scala 96:14]
    node _T = bits(io.B, 0, 0) @[multpipe.scala 99:14]
    node _T_1 = eq(_T, UInt<1>("h0")) @[multpipe.scala 99:18]
    when _T_1 : @[multpipe.scala 99:26]
      sarr[0][0] <= UInt<1>("h0") @[multpipe.scala 100:18]
    else :
      sarr[0][0] <= io.A @[multpipe.scala 102:18]
    sarr[0][1] <= sarr[0][0] @[multpipe.scala 105:18]
    sarr[0][2] <= sarr[0][1] @[multpipe.scala 105:18]
    sarr[0][3] <= sarr[0][2] @[multpipe.scala 105:18]
    node _T_2 = bits(io.B, 1, 1) @[multpipe.scala 99:14]
    node _T_3 = eq(_T_2, UInt<1>("h0")) @[multpipe.scala 99:18]
    when _T_3 : @[multpipe.scala 99:26]
      sarr[1][0] <= UInt<1>("h0") @[multpipe.scala 100:18]
    else :
      sarr[1][0] <= io.A @[multpipe.scala 102:18]
    sarr[1][1] <= sarr[1][0] @[multpipe.scala 105:18]
    sarr[1][2] <= sarr[1][1] @[multpipe.scala 105:18]
    sarr[1][3] <= sarr[1][2] @[multpipe.scala 105:18]
    node _T_4 = bits(io.B, 2, 2) @[multpipe.scala 99:14]
    node _T_5 = eq(_T_4, UInt<1>("h0")) @[multpipe.scala 99:18]
    when _T_5 : @[multpipe.scala 99:26]
      sarr[2][0] <= UInt<1>("h0") @[multpipe.scala 100:18]
    else :
      sarr[2][0] <= io.A @[multpipe.scala 102:18]
    sarr[2][1] <= sarr[2][0] @[multpipe.scala 105:18]
    sarr[2][2] <= sarr[2][1] @[multpipe.scala 105:18]
    sarr[2][3] <= sarr[2][2] @[multpipe.scala 105:18]
    node _T_6 = bits(io.B, 3, 3) @[multpipe.scala 99:14]
    node _T_7 = eq(_T_6, UInt<1>("h0")) @[multpipe.scala 99:18]
    when _T_7 : @[multpipe.scala 99:26]
      sarr[3][0] <= UInt<1>("h0") @[multpipe.scala 100:18]
    else :
      sarr[3][0] <= io.A @[multpipe.scala 102:18]
    sarr[3][1] <= sarr[3][0] @[multpipe.scala 105:18]
    sarr[3][2] <= sarr[3][1] @[multpipe.scala 105:18]
    sarr[3][3] <= sarr[3][2] @[multpipe.scala 105:18]
    node _s1_temp_0_T = bits(sarr[0][0], 0, 0) @[multpipe.scala 109:27]
    s1_temp[0] <= _s1_temp_0_T @[multpipe.scala 109:14]
    node _s2_temp_0_T = bits(sarr[2][0], 0, 0) @[multpipe.scala 110:27]
    s2_temp[0] <= _s2_temp_0_T @[multpipe.scala 110:14]
    node _T_8 = bits(sarr[0][0], 1, 1) @[multpipe.scala 111:32]
    fulladder.io.A <= _T_8 @[multpipe.scala 111:19]
    node _T_9 = bits(sarr[1][0], 0, 0) @[multpipe.scala 112:32]
    fulladder.io.B <= _T_9 @[multpipe.scala 112:19]
    fulladder.io.C <= UInt<1>("h0") @[multpipe.scala 113:19]
    s1_temp[1] <= fulladder.io.Sum @[multpipe.scala 114:14]
    c1_temp[0] <= fulladder.io.Carry @[multpipe.scala 115:14]
    node _T_10 = bits(sarr[0][1], 2, 2) @[multpipe.scala 117:32]
    fulladder_1.io.A <= _T_10 @[multpipe.scala 117:19]
    node _T_11 = bits(sarr[1][1], 1, 1) @[multpipe.scala 118:32]
    fulladder_1.io.B <= _T_11 @[multpipe.scala 118:19]
    fulladder_1.io.C <= c1_var[0] @[multpipe.scala 119:19]
    s1_temp[2] <= fulladder_1.io.Sum @[multpipe.scala 120:19]
    c1_temp[1] <= fulladder_1.io.Carry @[multpipe.scala 121:19]
    node _T_12 = bits(sarr[0][2], 3, 3) @[multpipe.scala 123:32]
    fulladder_2.io.A <= _T_12 @[multpipe.scala 123:19]
    node _T_13 = bits(sarr[1][2], 2, 2) @[multpipe.scala 124:32]
    fulladder_2.io.B <= _T_13 @[multpipe.scala 124:19]
    fulladder_2.io.C <= c1_var[1] @[multpipe.scala 125:19]
    s1_temp[3] <= fulladder_2.io.Sum @[multpipe.scala 126:19]
    c1_temp[2] <= fulladder_2.io.Carry @[multpipe.scala 127:19]
    fulladder_3.io.A <= UInt<1>("h0") @[multpipe.scala 129:19]
    node _T_14 = bits(sarr[1][3], 3, 3) @[multpipe.scala 130:32]
    fulladder_3.io.B <= _T_14 @[multpipe.scala 130:19]
    fulladder_3.io.C <= c1_var[2] @[multpipe.scala 131:19]
    s1_temp[4] <= fulladder_3.io.Sum @[multpipe.scala 132:19]
    s1_temp[5] <= fulladder_3.io.Carry @[multpipe.scala 133:19]
    node _T_15 = bits(sarr[2][0], 1, 1) @[multpipe.scala 135:32]
    fulladder_4.io.A <= _T_15 @[multpipe.scala 135:19]
    node _T_16 = bits(sarr[3][0], 0, 0) @[multpipe.scala 136:32]
    fulladder_4.io.B <= _T_16 @[multpipe.scala 136:19]
    fulladder_4.io.C <= UInt<1>("h0") @[multpipe.scala 137:19]
    s2_temp[1] <= fulladder_4.io.Sum @[multpipe.scala 138:19]
    c2_temp[0] <= fulladder_4.io.Carry @[multpipe.scala 139:19]
    node _T_17 = bits(sarr[2][1], 2, 2) @[multpipe.scala 141:32]
    fulladder_5.io.A <= _T_17 @[multpipe.scala 141:19]
    node _T_18 = bits(sarr[3][1], 1, 1) @[multpipe.scala 142:32]
    fulladder_5.io.B <= _T_18 @[multpipe.scala 142:19]
    fulladder_5.io.C <= c2_var[0] @[multpipe.scala 143:19]
    s2_temp[2] <= fulladder_5.io.Sum @[multpipe.scala 144:19]
    c2_temp[1] <= fulladder_5.io.Carry @[multpipe.scala 145:19]
    node _T_19 = bits(sarr[2][2], 3, 3) @[multpipe.scala 147:32]
    fulladder_6.io.A <= _T_19 @[multpipe.scala 147:19]
    node _T_20 = bits(sarr[3][2], 2, 2) @[multpipe.scala 148:32]
    fulladder_6.io.B <= _T_20 @[multpipe.scala 148:19]
    fulladder_6.io.C <= c2_var[1] @[multpipe.scala 149:19]
    s2_temp[3] <= fulladder_6.io.Sum @[multpipe.scala 150:19]
    c2_temp[2] <= fulladder_6.io.Carry @[multpipe.scala 151:19]
    fulladder_7.io.A <= UInt<1>("h0") @[multpipe.scala 153:19]
    node _T_21 = bits(sarr[3][3], 3, 3) @[multpipe.scala 154:32]
    fulladder_7.io.B <= _T_21 @[multpipe.scala 154:19]
    fulladder_7.io.C <= c1_var[2] @[multpipe.scala 155:19]
    s2_temp[4] <= fulladder_7.io.Sum @[multpipe.scala 156:14]
    s2_temp[5] <= fulladder_7.io.Carry @[multpipe.scala 157:14]
    fulladder_8.io.A <= s1_var2[2] @[multpipe.scala 159:19]
    fulladder_8.io.B <= s2_var3[0] @[multpipe.scala 160:19]
    fulladder_8.io.C <= UInt<1>("h0") @[multpipe.scala 161:19]
    teliko5[2] <= fulladder_8.io.Sum @[multpipe.scala 162:14]
    c_temp[0] <= fulladder_8.io.Carry @[multpipe.scala 163:13]
    fulladder_9.io.A <= s1_var2[3] @[multpipe.scala 165:19]
    fulladder_9.io.B <= s2_var4[1] @[multpipe.scala 166:19]
    fulladder_9.io.C <= c_var[0] @[multpipe.scala 167:19]
    teliko4[3] <= fulladder_9.io.Sum @[multpipe.scala 168:14]
    c_temp[2] <= fulladder_9.io.Carry @[multpipe.scala 169:13]
    fulladder_10.io.A <= s1_var2[4] @[multpipe.scala 171:20]
    fulladder_10.io.B <= s2_var4[2] @[multpipe.scala 172:20]
    fulladder_10.io.C <= c_var[1] @[multpipe.scala 173:20]
    teliko3[4] <= fulladder_10.io.Sum @[multpipe.scala 174:14]
    c_temp[2] <= fulladder_10.io.Carry @[multpipe.scala 175:13]
    fulladder_11.io.A <= s1_var3[5] @[multpipe.scala 177:20]
    fulladder_11.io.B <= s2_var4[3] @[multpipe.scala 178:20]
    fulladder_11.io.C <= c_var[2] @[multpipe.scala 179:20]
    teliko2[5] <= fulladder_11.io.Sum @[multpipe.scala 180:14]
    c_temp[3] <= fulladder_11.io.Carry @[multpipe.scala 181:13]
    fulladder_12.io.A <= UInt<1>("h0") @[multpipe.scala 183:20]
    fulladder_12.io.B <= s2_var4[4] @[multpipe.scala 184:20]
    fulladder_12.io.C <= c_var[3] @[multpipe.scala 185:20]
    teliko1[6] <= fulladder_12.io.Sum @[multpipe.scala 186:14]
    c_temp[4] <= fulladder_12.io.Carry @[multpipe.scala 187:13]
    fulladder_13.io.A <= UInt<1>("h0") @[multpipe.scala 189:20]
    fulladder_13.io.B <= s2_var5[5] @[multpipe.scala 190:20]
    fulladder_13.io.C <= c_var[4] @[multpipe.scala 191:20]
    io.P[7] <= fulladder_13.io.Sum @[multpipe.scala 192:11]
    carry[0] <= fulladder_13.io.Carry @[multpipe.scala 193:12]

