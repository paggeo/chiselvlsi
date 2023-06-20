circuit testreg :
  module testreg :
    input clock : Clock
    input reset : UInt<1>
    input io_A : UInt<4>
    input io_B : UInt<4>
    output io_P : UInt<8>
    output io_sarr2_0_0 : UInt<8>
    output io_sarr2_0_1 : UInt<8>
    output io_sarr2_0_2 : UInt<8>
    output io_sarr2_0_3 : UInt<8>
    output io_sarr2_1_0 : UInt<8>
    output io_sarr2_1_1 : UInt<8>
    output io_sarr2_1_2 : UInt<8>
    output io_sarr2_1_3 : UInt<8>
    output io_sarr2_2_0 : UInt<8>
    output io_sarr2_2_1 : UInt<8>
    output io_sarr2_2_2 : UInt<8>
    output io_sarr2_2_3 : UInt<8>
    output io_sarr2_3_0 : UInt<8>
    output io_sarr2_3_1 : UInt<8>
    output io_sarr2_3_2 : UInt<8>
    output io_sarr2_3_3 : UInt<8>

    reg sarr_0_0 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sarr_0_0) @[testreg.scala 17:21]
    reg sarr_0_1 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sarr_0_1) @[testreg.scala 17:21]
    reg sarr_0_2 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sarr_0_2) @[testreg.scala 17:21]
    reg sarr_0_3 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sarr_0_3) @[testreg.scala 17:21]
    reg sarr_1_0 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sarr_1_0) @[testreg.scala 17:21]
    reg sarr_1_1 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sarr_1_1) @[testreg.scala 17:21]
    reg sarr_1_2 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sarr_1_2) @[testreg.scala 17:21]
    reg sarr_1_3 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sarr_1_3) @[testreg.scala 17:21]
    reg sarr_2_0 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sarr_2_0) @[testreg.scala 17:21]
    reg sarr_2_1 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sarr_2_1) @[testreg.scala 17:21]
    reg sarr_2_2 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sarr_2_2) @[testreg.scala 17:21]
    reg sarr_2_3 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sarr_2_3) @[testreg.scala 17:21]
    reg sarr_3_0 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sarr_3_0) @[testreg.scala 17:21]
    reg sarr_3_1 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sarr_3_1) @[testreg.scala 17:21]
    reg sarr_3_2 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sarr_3_2) @[testreg.scala 17:21]
    reg sarr_3_3 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), sarr_3_3) @[testreg.scala 17:21]
    node _T = bits(io_B, 0, 0) @[testreg.scala 20:14]
    node _T_1 = eq(_T, UInt<1>("h0")) @[testreg.scala 20:18]
    node _GEN_0 = mux(_T_1, UInt<1>("h0"), io_A) @[testreg.scala 20:26 21:18 23:18]
    node _T_2 = bits(io_B, 1, 1) @[testreg.scala 20:14]
    node _T_3 = eq(_T_2, UInt<1>("h0")) @[testreg.scala 20:18]
    node _GEN_1 = mux(_T_3, UInt<1>("h0"), io_A) @[testreg.scala 20:26 21:18 23:18]
    node _T_4 = bits(io_B, 2, 2) @[testreg.scala 20:14]
    node _T_5 = eq(_T_4, UInt<1>("h0")) @[testreg.scala 20:18]
    node _GEN_2 = mux(_T_5, UInt<1>("h0"), io_A) @[testreg.scala 20:26 21:18 23:18]
    node _T_6 = bits(io_B, 3, 3) @[testreg.scala 20:14]
    node _T_7 = eq(_T_6, UInt<1>("h0")) @[testreg.scala 20:18]
    node _GEN_3 = mux(_T_7, UInt<1>("h0"), io_A) @[testreg.scala 20:26 21:18 23:18]
    node _sarr_WIRE__0 = UInt<4>("h0") @[testreg.scala 17:{49,49}]
    node _sarr_WIRE__1 = UInt<4>("h0") @[testreg.scala 17:{49,49}]
    node _sarr_WIRE__2 = UInt<4>("h0") @[testreg.scala 17:{49,49}]
    node _sarr_WIRE__3 = UInt<4>("h0") @[testreg.scala 17:{49,49}]
    node _sarr_WIRE_1_0 = UInt<4>("h0") @[testreg.scala 17:{49,49}]
    node _sarr_WIRE_1_1 = UInt<4>("h0") @[testreg.scala 17:{49,49}]
    node _sarr_WIRE_1_2 = UInt<4>("h0") @[testreg.scala 17:{49,49}]
    node _sarr_WIRE_1_3 = UInt<4>("h0") @[testreg.scala 17:{49,49}]
    node _sarr_WIRE_2_0 = UInt<4>("h0") @[testreg.scala 17:{49,49}]
    node _sarr_WIRE_2_1 = UInt<4>("h0") @[testreg.scala 17:{49,49}]
    node _sarr_WIRE_2_2 = UInt<4>("h0") @[testreg.scala 17:{49,49}]
    node _sarr_WIRE_2_3 = UInt<4>("h0") @[testreg.scala 17:{49,49}]
    node _sarr_WIRE_3_0 = UInt<4>("h0") @[testreg.scala 17:{49,49}]
    node _sarr_WIRE_3_1 = UInt<4>("h0") @[testreg.scala 17:{49,49}]
    node _sarr_WIRE_3_2 = UInt<4>("h0") @[testreg.scala 17:{49,49}]
    node _sarr_WIRE_3_3 = UInt<4>("h0") @[testreg.scala 17:{49,49}]
    node _sarr_WIRE_4_0_0 = _sarr_WIRE__0 @[testreg.scala 17:{29,29}]
    node _sarr_WIRE_4_0_1 = _sarr_WIRE__1 @[testreg.scala 17:{29,29}]
    node _sarr_WIRE_4_0_2 = _sarr_WIRE__2 @[testreg.scala 17:{29,29}]
    node _sarr_WIRE_4_0_3 = _sarr_WIRE__3 @[testreg.scala 17:{29,29}]
    node _sarr_WIRE_4_1_0 = _sarr_WIRE_1_0 @[testreg.scala 17:{29,29}]
    node _sarr_WIRE_4_1_1 = _sarr_WIRE_1_1 @[testreg.scala 17:{29,29}]
    node _sarr_WIRE_4_1_2 = _sarr_WIRE_1_2 @[testreg.scala 17:{29,29}]
    node _sarr_WIRE_4_1_3 = _sarr_WIRE_1_3 @[testreg.scala 17:{29,29}]
    node _sarr_WIRE_4_2_0 = _sarr_WIRE_2_0 @[testreg.scala 17:{29,29}]
    node _sarr_WIRE_4_2_1 = _sarr_WIRE_2_1 @[testreg.scala 17:{29,29}]
    node _sarr_WIRE_4_2_2 = _sarr_WIRE_2_2 @[testreg.scala 17:{29,29}]
    node _sarr_WIRE_4_2_3 = _sarr_WIRE_2_3 @[testreg.scala 17:{29,29}]
    node _sarr_WIRE_4_3_0 = _sarr_WIRE_3_0 @[testreg.scala 17:{29,29}]
    node _sarr_WIRE_4_3_1 = _sarr_WIRE_3_1 @[testreg.scala 17:{29,29}]
    node _sarr_WIRE_4_3_2 = _sarr_WIRE_3_2 @[testreg.scala 17:{29,29}]
    node _sarr_WIRE_4_3_3 = _sarr_WIRE_3_3 @[testreg.scala 17:{29,29}]
    io_P <= UInt<8>("h0") @[testreg.scala 18:8]
    io_sarr2_0_0 <= pad(sarr_0_0, 8) @[testreg.scala 29:12]
    io_sarr2_0_1 <= pad(sarr_0_1, 8) @[testreg.scala 29:12]
    io_sarr2_0_2 <= pad(sarr_0_2, 8) @[testreg.scala 29:12]
    io_sarr2_0_3 <= pad(sarr_0_3, 8) @[testreg.scala 29:12]
    io_sarr2_1_0 <= pad(sarr_1_0, 8) @[testreg.scala 29:12]
    io_sarr2_1_1 <= pad(sarr_1_1, 8) @[testreg.scala 29:12]
    io_sarr2_1_2 <= pad(sarr_1_2, 8) @[testreg.scala 29:12]
    io_sarr2_1_3 <= pad(sarr_1_3, 8) @[testreg.scala 29:12]
    io_sarr2_2_0 <= pad(sarr_2_0, 8) @[testreg.scala 29:12]
    io_sarr2_2_1 <= pad(sarr_2_1, 8) @[testreg.scala 29:12]
    io_sarr2_2_2 <= pad(sarr_2_2, 8) @[testreg.scala 29:12]
    io_sarr2_2_3 <= pad(sarr_2_3, 8) @[testreg.scala 29:12]
    io_sarr2_3_0 <= pad(sarr_3_0, 8) @[testreg.scala 29:12]
    io_sarr2_3_1 <= pad(sarr_3_1, 8) @[testreg.scala 29:12]
    io_sarr2_3_2 <= pad(sarr_3_2, 8) @[testreg.scala 29:12]
    io_sarr2_3_3 <= pad(sarr_3_3, 8) @[testreg.scala 29:12]
    sarr_0_0 <= mux(reset, _sarr_WIRE_4_0_0, _GEN_0) @[testreg.scala 17:{21,21}]
    sarr_0_1 <= mux(reset, _sarr_WIRE_4_0_1, sarr_0_0) @[testreg.scala 17:{21,21} 26:18]
    sarr_0_2 <= mux(reset, _sarr_WIRE_4_0_2, sarr_0_1) @[testreg.scala 17:{21,21} 26:18]
    sarr_0_3 <= mux(reset, _sarr_WIRE_4_0_3, sarr_0_2) @[testreg.scala 17:{21,21} 26:18]
    sarr_1_0 <= mux(reset, _sarr_WIRE_4_1_0, _GEN_1) @[testreg.scala 17:{21,21}]
    sarr_1_1 <= mux(reset, _sarr_WIRE_4_1_1, sarr_1_0) @[testreg.scala 17:{21,21} 26:18]
    sarr_1_2 <= mux(reset, _sarr_WIRE_4_1_2, sarr_1_1) @[testreg.scala 17:{21,21} 26:18]
    sarr_1_3 <= mux(reset, _sarr_WIRE_4_1_3, sarr_1_2) @[testreg.scala 17:{21,21} 26:18]
    sarr_2_0 <= mux(reset, _sarr_WIRE_4_2_0, _GEN_2) @[testreg.scala 17:{21,21}]
    sarr_2_1 <= mux(reset, _sarr_WIRE_4_2_1, sarr_2_0) @[testreg.scala 17:{21,21} 26:18]
    sarr_2_2 <= mux(reset, _sarr_WIRE_4_2_2, sarr_2_1) @[testreg.scala 17:{21,21} 26:18]
    sarr_2_3 <= mux(reset, _sarr_WIRE_4_2_3, sarr_2_2) @[testreg.scala 17:{21,21} 26:18]
    sarr_3_0 <= mux(reset, _sarr_WIRE_4_3_0, _GEN_3) @[testreg.scala 17:{21,21}]
    sarr_3_1 <= mux(reset, _sarr_WIRE_4_3_1, sarr_3_0) @[testreg.scala 17:{21,21} 26:18]
    sarr_3_2 <= mux(reset, _sarr_WIRE_4_3_2, sarr_3_1) @[testreg.scala 17:{21,21} 26:18]
    sarr_3_3 <= mux(reset, _sarr_WIRE_4_3_3, sarr_3_2) @[testreg.scala 17:{21,21} 26:18]
