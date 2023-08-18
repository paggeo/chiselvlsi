circuit counter :
  module counter :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip valid_in : UInt<1>, rom_address : UInt<3>, ram_address : UInt<3>, mac_init : UInt<1>, we : UInt<1>, en : UInt<1>}

    reg counter : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[counter.scala 17:24]
    node _ent_T = dshr(UInt<1>("h0"), UInt<1>("h1")) @[counter.scala 19:24]
    node _ent_T_1 = bits(_ent_T, 0, 0) @[counter.scala 19:24]
    reg ent : UInt<1>, clock with :
      reset => (reset, _ent_T_1) @[counter.scala 19:20]
    node _wet_T = dshr(UInt<1>("h0"), UInt<1>("h1")) @[counter.scala 20:24]
    node _wet_T_1 = bits(_wet_T, 0, 0) @[counter.scala 20:24]
    reg wet : UInt<1>, clock with :
      reset => (reset, _wet_T_1) @[counter.scala 20:20]
    node _mac_initt_T = dshr(UInt<1>("h0"), UInt<1>("h1")) @[counter.scala 21:30]
    node _mac_initt_T_1 = bits(_mac_initt_T, 0, 0) @[counter.scala 21:30]
    reg mac_initt : UInt<1>, clock with :
      reset => (reset, _mac_initt_T_1) @[counter.scala 21:26]
    node _rom_addresst_T = dshr(UInt<1>("h0"), UInt<2>("h3")) @[counter.scala 22:33]
    node _rom_addresst_T_1 = bits(_rom_addresst_T, 0, 0) @[counter.scala 22:33]
    reg rom_addresst : UInt<1>, clock with :
      reset => (reset, _rom_addresst_T_1) @[counter.scala 22:29]
    node _ram_addresst_T = dshr(UInt<1>("h0"), UInt<2>("h3")) @[counter.scala 23:33]
    node _ram_addresst_T_1 = bits(_ram_addresst_T, 0, 0) @[counter.scala 23:33]
    reg ram_addresst : UInt<1>, clock with :
      reset => (reset, _ram_addresst_T_1) @[counter.scala 23:29]
    io.en <= ent @[counter.scala 24:9]
    io.we <= wet @[counter.scala 25:9]
    io.mac_init <= mac_initt @[counter.scala 26:15]
    io.rom_address <= rom_addresst @[counter.scala 27:18]
    io.ram_address <= ram_addresst @[counter.scala 28:18]
    node _T = eq(counter, UInt<1>("h0")) @[counter.scala 29:16]
    node _T_1 = eq(io.valid_in, UInt<1>("h1")) @[counter.scala 29:39]
    node _T_2 = and(_T, _T_1) @[counter.scala 29:24]
    when _T_2 : @[counter.scala 29:48]
      ent <= UInt<1>("h1") @[counter.scala 30:9]
      wet <= UInt<1>("h1") @[counter.scala 31:9]
      mac_initt <= UInt<1>("h1") @[counter.scala 32:15]
      rom_addresst <= counter @[counter.scala 33:18]
      ram_addresst <= counter @[counter.scala 34:18]
      node _counter_T = add(counter, UInt<1>("h1")) @[counter.scala 35:24]
      node _counter_T_1 = tail(_counter_T, 1) @[counter.scala 35:24]
      counter <= _counter_T_1 @[counter.scala 35:13]
    else :
      node _T_3 = eq(counter, UInt<1>("h0")) @[counter.scala 36:22]
      node _T_4 = eq(io.valid_in, UInt<1>("h0")) @[counter.scala 36:45]
      node _T_5 = and(_T_3, _T_4) @[counter.scala 36:30]
      when _T_5 : @[counter.scala 36:54]
        ent <= UInt<1>("h0") @[counter.scala 37:9]
        wet <= UInt<1>("h0") @[counter.scala 38:9]
        mac_initt <= UInt<1>("h1") @[counter.scala 39:15]
      else :
        node _T_6 = neq(counter, UInt<1>("h0")) @[counter.scala 40:23]
        when _T_6 : @[counter.scala 40:31]
          ent <= UInt<1>("h1") @[counter.scala 41:9]
          wet <= UInt<1>("h1") @[counter.scala 42:9]
          mac_initt <= UInt<1>("h0") @[counter.scala 43:15]
          rom_addresst <= counter @[counter.scala 44:18]
          ram_addresst <= counter @[counter.scala 45:18]
          node _counter_T_2 = add(counter, UInt<1>("h1")) @[counter.scala 46:24]
          node _counter_T_3 = tail(_counter_T_2, 1) @[counter.scala 46:24]
          counter <= _counter_T_3 @[counter.scala 46:13]

