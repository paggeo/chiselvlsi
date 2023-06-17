circuit Barrel :
  module Barrel :
    input clock : Clock
    input reset : UInt<1>
    input io_din_0 : UInt<1>
    input io_din_1 : UInt<1>
    input io_din_2 : UInt<1>
    input io_din_3 : UInt<1>
    input io_si : UInt<1>
    input io_pl : UInt<1>
    input io_en : UInt<1>
    input io_dir : UInt<1>
    output io_so : UInt<1>

    reg reg_0 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), reg_0) @[barrelshifter.scala 18:20]
    reg reg_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), reg_1) @[barrelshifter.scala 18:20]
    reg reg_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), reg_2) @[barrelshifter.scala 18:20]
    reg reg_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), reg_3) @[barrelshifter.scala 18:20]
    node _T = eq(io_pl, UInt<1>("h1")) @[barrelshifter.scala 20:14]
    node _T_1 = eq(io_en, UInt<1>("h1")) @[barrelshifter.scala 23:16]
    node _T_2 = eq(io_dir, UInt<1>("h0")) @[barrelshifter.scala 24:20]
    node _GEN_0 = mux(_T_2, reg_1, io_si) @[barrelshifter.scala 24:28 26:20 34:16]
    node _GEN_1 = mux(_T_2, reg_2, reg_0) @[barrelshifter.scala 24:28 26:20 32:20]
    node _GEN_2 = mux(_T_2, reg_3, reg_1) @[barrelshifter.scala 24:28 26:20 32:20]
    node _GEN_3 = mux(_T_2, io_si, reg_2) @[barrelshifter.scala 24:28 28:16 32:20]
    node _GEN_4 = mux(_T_2, reg_0, reg_3) @[barrelshifter.scala 24:28 29:15 35:15]
    node _GEN_5 = mux(_T_1, _GEN_0, reg_0) @[barrelshifter.scala 18:20 23:24]
    node _GEN_6 = mux(_T_1, _GEN_1, reg_1) @[barrelshifter.scala 18:20 23:24]
    node _GEN_7 = mux(_T_1, _GEN_2, reg_2) @[barrelshifter.scala 18:20 23:24]
    node _GEN_8 = mux(_T_1, _GEN_3, reg_3) @[barrelshifter.scala 18:20 23:24]
    node _GEN_9 = mux(_T_1, _GEN_4, UInt<1>("h0")) @[barrelshifter.scala 23:24 19:9]
    node _GEN_10 = mux(_T, io_din_0, _GEN_5) @[barrelshifter.scala 20:22 21:9]
    node _GEN_11 = mux(_T, io_din_1, _GEN_6) @[barrelshifter.scala 20:22 21:9]
    node _GEN_12 = mux(_T, io_din_2, _GEN_7) @[barrelshifter.scala 20:22 21:9]
    node _GEN_13 = mux(_T, io_din_3, _GEN_8) @[barrelshifter.scala 20:22 21:9]
    node _GEN_14 = mux(_T, UInt<1>("h0"), _GEN_9) @[barrelshifter.scala 20:22 19:9]
    node _reg_WIRE_0 = UInt<1>("h0") @[barrelshifter.scala 18:{28,28}]
    node _reg_WIRE_1 = UInt<1>("h0") @[barrelshifter.scala 18:{28,28}]
    node _reg_WIRE_2 = UInt<1>("h0") @[barrelshifter.scala 18:{28,28}]
    node _reg_WIRE_3 = UInt<1>("h0") @[barrelshifter.scala 18:{28,28}]
    io_so <= _GEN_14
    reg_0 <= mux(reset, _reg_WIRE_0, _GEN_10) @[barrelshifter.scala 18:{20,20}]
    reg_1 <= mux(reset, _reg_WIRE_1, _GEN_11) @[barrelshifter.scala 18:{20,20}]
    reg_2 <= mux(reset, _reg_WIRE_2, _GEN_12) @[barrelshifter.scala 18:{20,20}]
    reg_3 <= mux(reset, _reg_WIRE_3, _GEN_13) @[barrelshifter.scala 18:{20,20}]
