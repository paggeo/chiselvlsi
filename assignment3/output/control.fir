circuit control :
  module control :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip valid_in : UInt<1>, rom_address : UInt<3>, ram_address : UInt<3>, mac_init : UInt<1>, we : UInt<1>, en : UInt<1>}

    reg counter : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[control.scala 17:24]
    reg ent : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[control.scala 19:20]
    reg wet : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[control.scala 20:20]
    reg mac_initt : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[control.scala 21:26]
    reg rom_addresst : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[control.scala 22:29]
    reg ram_addresst : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[control.scala 23:29]
    io.en <= ent @[control.scala 25:9]
    io.we <= wet @[control.scala 26:9]
    io.mac_init <= mac_initt @[control.scala 27:15]
    io.rom_address <= rom_addresst @[control.scala 28:18]
    io.ram_address <= ram_addresst @[control.scala 29:18]
    node _T = eq(counter, UInt<1>("h0")) @[control.scala 31:16]
    node _T_1 = eq(io.valid_in, UInt<1>("h1")) @[control.scala 31:39]
    node _T_2 = and(_T, _T_1) @[control.scala 31:24]
    when _T_2 : @[control.scala 31:48]
      ent <= UInt<1>("h1") @[control.scala 32:9]
      wet <= UInt<1>("h1") @[control.scala 33:9]
      mac_initt <= UInt<1>("h1") @[control.scala 34:15]
      rom_addresst <= counter @[control.scala 35:18]
      ram_addresst <= counter @[control.scala 36:18]
      node _counter_T = add(counter, UInt<1>("h1")) @[control.scala 37:24]
      node _counter_T_1 = tail(_counter_T, 1) @[control.scala 37:24]
      counter <= _counter_T_1 @[control.scala 37:13]
    else :
      node _T_3 = eq(counter, UInt<1>("h0")) @[control.scala 38:22]
      node _T_4 = eq(io.valid_in, UInt<1>("h0")) @[control.scala 38:45]
      node _T_5 = and(_T_3, _T_4) @[control.scala 38:30]
      when _T_5 : @[control.scala 38:54]
        ent <= UInt<1>("h0") @[control.scala 39:9]
        wet <= UInt<1>("h0") @[control.scala 40:9]
        mac_initt <= UInt<1>("h1") @[control.scala 41:15]
      else :
        node _T_6 = neq(counter, UInt<1>("h0")) @[control.scala 42:23]
        when _T_6 : @[control.scala 42:31]
          ent <= UInt<1>("h1") @[control.scala 43:9]
          wet <= UInt<1>("h1") @[control.scala 44:9]
          mac_initt <= UInt<1>("h0") @[control.scala 45:15]
          rom_addresst <= counter @[control.scala 46:18]
          ram_addresst <= counter @[control.scala 47:18]
          node _counter_T_2 = add(counter, UInt<1>("h1")) @[control.scala 48:24]
          node _counter_T_3 = tail(_counter_T_2, 1) @[control.scala 48:24]
          counter <= _counter_T_3 @[control.scala 48:13]

