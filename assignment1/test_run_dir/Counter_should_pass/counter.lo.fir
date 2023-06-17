circuit counter :
  module counter :
    input clock : Clock
    input reset : UInt<1>
    input io_din : UInt<3>
    input io_en : UInt<1>
    input io_mod : UInt<1>
    input io_dir : UInt<1>
    output io_dout : UInt<3>

    reg count : UInt<3>, clock with :
      reset => (UInt<1>("h0"), count) @[counter.scala 17:22]
    node _T = eq(io_en, UInt<1>("h1")) @[counter.scala 18:14]
    node _T_1 = eq(io_dir, UInt<1>("h1")) @[counter.scala 19:17]
    node _T_2 = eq(io_mod, UInt<1>("h1")) @[counter.scala 20:19]
    node _T_3 = neq(count, io_din) @[counter.scala 21:21]
    node _count_T = add(count, UInt<1>("h1")) @[counter.scala 22:26]
    node _count_T_1 = tail(_count_T, 1) @[counter.scala 22:26]
    node _GEN_0 = mux(_T_3, _count_T_1, UInt<1>("h0")) @[counter.scala 21:32 22:17 24:17]
    node _count_T_2 = add(count, UInt<1>("h1")) @[counter.scala 27:24]
    node _count_T_3 = tail(_count_T_2, 1) @[counter.scala 27:24]
    node _GEN_1 = mux(_T_2, _GEN_0, _count_T_3) @[counter.scala 20:27 27:15]
    node _count_T_4 = sub(count, UInt<1>("h1")) @[counter.scala 30:22]
    node _count_T_5 = tail(_count_T_4, 1) @[counter.scala 30:22]
    node _GEN_2 = mux(_T_1, _GEN_1, _count_T_5) @[counter.scala 19:25 30:13]
    node _GEN_3 = mux(_T, _GEN_2, count) @[counter.scala 17:22 18:22]
    io_dout <= count @[counter.scala 33:11]
    count <= mux(reset, UInt<3>("h0"), _GEN_3) @[counter.scala 17:{22,22}]
