circuit Dec :
  module Dec :
    input clock : Clock
    input reset : UInt<1>
    input io_input_0 : UInt<1>
    input io_input_1 : UInt<1>
    input io_input_2 : UInt<1>
    input io_input_3 : UInt<1>
    output io_output_0 : UInt<1>
    output io_output_1 : UInt<1>
    output io_output_2 : UInt<1>
    output io_output_3 : UInt<1>
    output io_output_4 : UInt<1>
    output io_output_5 : UInt<1>
    output io_output_6 : UInt<1>
    output io_output_7 : UInt<1>
    output io_output_8 : UInt<1>
    output io_output_9 : UInt<1>
    output io_output_10 : UInt<1>
    output io_output_11 : UInt<1>
    output io_output_12 : UInt<1>
    output io_output_13 : UInt<1>
    output io_output_14 : UInt<1>
    output io_output_15 : UInt<1>

    node input_lo = cat(io_input_1, io_input_0) @[dec.scala 18:30]
    node input_hi = cat(io_input_3, io_input_2) @[dec.scala 18:30]
    node input = cat(input_hi, input_lo) @[dec.scala 18:30]
    node _T = eq(input, UInt<1>("h0")) @[dec.scala 21:17]
    node _GEN_0 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[dec.scala 17:23 21:{26,40}]
    node _T_1 = eq(input, UInt<1>("h1")) @[dec.scala 21:17]
    node _GEN_1 = mux(_T_1, UInt<1>("h1"), UInt<1>("h0")) @[dec.scala 17:23 21:{26,40}]
    node _T_2 = eq(input, UInt<2>("h2")) @[dec.scala 21:17]
    node _GEN_2 = mux(_T_2, UInt<1>("h1"), UInt<1>("h0")) @[dec.scala 17:23 21:{26,40}]
    node _T_3 = eq(input, UInt<2>("h3")) @[dec.scala 21:17]
    node _GEN_3 = mux(_T_3, UInt<1>("h1"), UInt<1>("h0")) @[dec.scala 17:23 21:{26,40}]
    node _T_4 = eq(input, UInt<3>("h4")) @[dec.scala 21:17]
    node _GEN_4 = mux(_T_4, UInt<1>("h1"), UInt<1>("h0")) @[dec.scala 17:23 21:{26,40}]
    node _T_5 = eq(input, UInt<3>("h5")) @[dec.scala 21:17]
    node _GEN_5 = mux(_T_5, UInt<1>("h1"), UInt<1>("h0")) @[dec.scala 17:23 21:{26,40}]
    node _T_6 = eq(input, UInt<3>("h6")) @[dec.scala 21:17]
    node _GEN_6 = mux(_T_6, UInt<1>("h1"), UInt<1>("h0")) @[dec.scala 17:23 21:{26,40}]
    node _T_7 = eq(input, UInt<3>("h7")) @[dec.scala 21:17]
    node _GEN_7 = mux(_T_7, UInt<1>("h1"), UInt<1>("h0")) @[dec.scala 17:23 21:{26,40}]
    node _T_8 = eq(input, UInt<4>("h8")) @[dec.scala 21:17]
    node _GEN_8 = mux(_T_8, UInt<1>("h1"), UInt<1>("h0")) @[dec.scala 17:23 21:{26,40}]
    node _T_9 = eq(input, UInt<4>("h9")) @[dec.scala 21:17]
    node _GEN_9 = mux(_T_9, UInt<1>("h1"), UInt<1>("h0")) @[dec.scala 17:23 21:{26,40}]
    node _T_10 = eq(input, UInt<4>("ha")) @[dec.scala 21:17]
    node _GEN_10 = mux(_T_10, UInt<1>("h1"), UInt<1>("h0")) @[dec.scala 17:23 21:{26,40}]
    node _T_11 = eq(input, UInt<4>("hb")) @[dec.scala 21:17]
    node _GEN_11 = mux(_T_11, UInt<1>("h1"), UInt<1>("h0")) @[dec.scala 17:23 21:{26,40}]
    node _T_12 = eq(input, UInt<4>("hc")) @[dec.scala 21:17]
    node _GEN_12 = mux(_T_12, UInt<1>("h1"), UInt<1>("h0")) @[dec.scala 17:23 21:{26,40}]
    node _T_13 = eq(input, UInt<4>("hd")) @[dec.scala 21:17]
    node _GEN_13 = mux(_T_13, UInt<1>("h1"), UInt<1>("h0")) @[dec.scala 17:23 21:{26,40}]
    node _T_14 = eq(input, UInt<4>("he")) @[dec.scala 21:17]
    node _GEN_14 = mux(_T_14, UInt<1>("h1"), UInt<1>("h0")) @[dec.scala 17:23 21:{26,40}]
    node _T_15 = eq(input, UInt<4>("hf")) @[dec.scala 21:17]
    node _GEN_15 = mux(_T_15, UInt<1>("h1"), UInt<1>("h0")) @[dec.scala 17:23 21:{26,40}]
    io_output_0 <= _GEN_0
    io_output_1 <= _GEN_1
    io_output_2 <= _GEN_2
    io_output_3 <= _GEN_3
    io_output_4 <= _GEN_4
    io_output_5 <= _GEN_5
    io_output_6 <= _GEN_6
    io_output_7 <= _GEN_7
    io_output_8 <= _GEN_8
    io_output_9 <= _GEN_9
    io_output_10 <= _GEN_10
    io_output_11 <= _GEN_11
    io_output_12 <= _GEN_12
    io_output_13 <= _GEN_13
    io_output_14 <= _GEN_14
    io_output_15 <= _GEN_15
