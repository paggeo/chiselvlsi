circuit Barrel :
  module Barrel :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip din : UInt<1>[4], flip si : UInt<1>, flip pl : UInt<1>, flip en : UInt<1>, flip dir : UInt<1>, so : UInt<1>}

    wire _reg_WIRE : UInt<1>[4] @[barrelshifter.scala 18:28]
    _reg_WIRE[0] <= UInt<1>("h0") @[barrelshifter.scala 18:28]
    _reg_WIRE[1] <= UInt<1>("h0") @[barrelshifter.scala 18:28]
    _reg_WIRE[2] <= UInt<1>("h0") @[barrelshifter.scala 18:28]
    _reg_WIRE[3] <= UInt<1>("h0") @[barrelshifter.scala 18:28]
    reg reg : UInt<1>[4], clock with :
      reset => (reset, _reg_WIRE) @[barrelshifter.scala 18:20]
    io.so <= UInt<1>("h0") @[barrelshifter.scala 19:9]
    node _T = eq(io.pl, UInt<1>("h1")) @[barrelshifter.scala 20:14]
    when _T : @[barrelshifter.scala 20:22]
      reg <= io.din @[barrelshifter.scala 21:9]
    else :
      node _T_1 = eq(io.en, UInt<1>("h1")) @[barrelshifter.scala 23:16]
      when _T_1 : @[barrelshifter.scala 23:24]
        node _T_2 = eq(io.dir, UInt<1>("h0")) @[barrelshifter.scala 24:20]
        when _T_2 : @[barrelshifter.scala 24:28]
          reg[0] <= reg[1] @[barrelshifter.scala 26:20]
          reg[1] <= reg[2] @[barrelshifter.scala 26:20]
          reg[2] <= reg[3] @[barrelshifter.scala 26:20]
          reg[3] <= io.si @[barrelshifter.scala 28:16]
          io.so <= reg[0] @[barrelshifter.scala 29:15]
        else :
          reg[1] <= reg[0] @[barrelshifter.scala 32:20]
          reg[2] <= reg[1] @[barrelshifter.scala 32:20]
          reg[3] <= reg[2] @[barrelshifter.scala 32:20]
          reg[0] <= io.si @[barrelshifter.scala 34:16]
          io.so <= reg[3] @[barrelshifter.scala 35:15]

