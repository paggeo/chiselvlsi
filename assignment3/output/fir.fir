circuit fir :
  module mac :
    input clock : Clock
    input reset : Reset
    output io : { flip mac_init : UInt<1>, flip rom_out : UInt<8>, flip ram_out : UInt<8>, y : UInt<19>, valid_out : UInt<1>}

    reg counter : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[mac.scala 16:24]
    reg yt : UInt<19>, clock with :
      reset => (reset, UInt<19>("h0")) @[mac.scala 18:19]
    reg valid_outt : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[mac.scala 19:27]
    io.y <= yt @[mac.scala 20:8]
    io.valid_out <= valid_outt @[mac.scala 21:16]
    node _T = eq(io.mac_init, UInt<1>("h1")) @[mac.scala 22:21]
    when _T : @[mac.scala 22:30]
      node _yt_T = mul(io.rom_out, io.ram_out) @[mac.scala 22:60]
      node _yt_T_1 = cat(UInt<3>("h0"), _yt_T) @[Cat.scala 33:92]
      yt <= _yt_T_1 @[mac.scala 22:34]
    else :
      node _yt_T_2 = mul(io.rom_out, io.ram_out) @[mac.scala 23:36]
      node _yt_T_3 = add(yt, _yt_T_2) @[mac.scala 23:24]
      node _yt_T_4 = tail(_yt_T_3, 1) @[mac.scala 23:24]
      yt <= _yt_T_4 @[mac.scala 23:18]
    node _T_1 = eq(io.mac_init, UInt<1>("h1")) @[mac.scala 25:21]
    node _T_2 = neq(counter, UInt<3>("h6")) @[mac.scala 25:40]
    node _T_3 = and(_T_1, _T_2) @[mac.scala 25:29]
    when _T_3 : @[mac.scala 25:49]
      counter <= UInt<1>("h0") @[mac.scala 25:59]
      valid_outt <= UInt<1>("h0") @[mac.scala 25:78]
    else :
      node _T_4 = eq(io.mac_init, UInt<1>("h0")) @[mac.scala 26:26]
      node _T_5 = eq(counter, UInt<3>("h6")) @[mac.scala 26:45]
      node _T_6 = and(_T_4, _T_5) @[mac.scala 26:34]
      when _T_6 : @[mac.scala 26:54]
        counter <= UInt<1>("h0") @[mac.scala 26:64]
        valid_outt <= UInt<1>("h1") @[mac.scala 26:83]
      else :
        node _T_7 = eq(io.mac_init, UInt<1>("h1")) @[mac.scala 27:26]
        node _T_8 = eq(counter, UInt<3>("h6")) @[mac.scala 27:45]
        node _T_9 = and(_T_7, _T_8) @[mac.scala 27:34]
        when _T_9 : @[mac.scala 27:54]
          counter <= UInt<1>("h0") @[mac.scala 27:64]
          valid_outt <= UInt<1>("h1") @[mac.scala 27:83]
        else :
          node _counter_T = add(counter, UInt<1>("h1")) @[mac.scala 28:35]
          node _counter_T_1 = tail(_counter_T, 1) @[mac.scala 28:35]
          counter <= _counter_T_1 @[mac.scala 28:24]
          valid_outt <= UInt<1>("h0") @[mac.scala 28:53]

  module control :
    input clock : Clock
    input reset : Reset
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

  module ram :
    input clock : Clock
    input reset : Reset
    output io : { flip we : UInt<1>, flip en : UInt<1>, flip addr : UInt<3>, flip di : UInt<8>, dio : UInt<8>}

    wire _ram_WIRE : UInt<8>[8] @[ram.scala 17:28]
    _ram_WIRE[0] <= UInt<8>("h0") @[ram.scala 17:28]
    _ram_WIRE[1] <= UInt<8>("h0") @[ram.scala 17:28]
    _ram_WIRE[2] <= UInt<8>("h0") @[ram.scala 17:28]
    _ram_WIRE[3] <= UInt<8>("h0") @[ram.scala 17:28]
    _ram_WIRE[4] <= UInt<8>("h0") @[ram.scala 17:28]
    _ram_WIRE[5] <= UInt<8>("h0") @[ram.scala 17:28]
    _ram_WIRE[6] <= UInt<8>("h0") @[ram.scala 17:28]
    _ram_WIRE[7] <= UInt<8>("h0") @[ram.scala 17:28]
    reg ram : UInt<8>[8], clock with :
      reset => (reset, _ram_WIRE) @[ram.scala 17:20]
    reg diot : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[ram.scala 18:21]
    io.dio <= diot @[ram.scala 20:10]
    node _T = eq(io.en, UInt<1>("h1")) @[ram.scala 21:14]
    when _T : @[ram.scala 21:23]
      node _T_1 = eq(io.we, UInt<1>("h1")) @[ram.scala 22:16]
      when _T_1 : @[ram.scala 22:25]
        ram[1] <= ram[0] @[ram.scala 23:34]
        ram[2] <= ram[1] @[ram.scala 23:34]
        ram[3] <= ram[2] @[ram.scala 23:34]
        ram[4] <= ram[3] @[ram.scala 23:34]
        ram[5] <= ram[4] @[ram.scala 23:34]
        ram[6] <= ram[5] @[ram.scala 23:34]
        ram[7] <= ram[6] @[ram.scala 23:34]
        ram[0] <= io.di @[ram.scala 24:14]
        diot <= io.di @[ram.scala 24:29]
      else :
        diot <= ram[io.addr] @[ram.scala 25:23]
    else :
      diot <= UInt<1>("h0") @[ram.scala 26:21]

  module rom :
    input clock : Clock
    input reset : Reset
    output io : { flip en : UInt<1>, flip addr : UInt<3>, rom_out : UInt<8>}

    wire rom : UInt<8>[8] @[rom.scala 14:20]
    rom[0] <= UInt<8>("h8") @[rom.scala 14:20]
    rom[1] <= UInt<8>("h7") @[rom.scala 14:20]
    rom[2] <= UInt<8>("h6") @[rom.scala 14:20]
    rom[3] <= UInt<8>("h5") @[rom.scala 14:20]
    rom[4] <= UInt<8>("h4") @[rom.scala 14:20]
    rom[5] <= UInt<8>("h3") @[rom.scala 14:20]
    rom[6] <= UInt<8>("h2") @[rom.scala 14:20]
    rom[7] <= UInt<8>("h1") @[rom.scala 14:20]
    reg romt : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[rom.scala 26:21]
    io.rom_out <= romt @[rom.scala 27:14]
    node _T = eq(io.en, UInt<1>("h1")) @[rom.scala 29:14]
    when _T : @[rom.scala 29:23]
      romt <= rom[io.addr] @[rom.scala 29:29]
    else :
      romt <= UInt<1>("h0") @[rom.scala 30:19]

  module fir :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip valid_in : UInt<1>, flip x : UInt<8>, y : UInt<19>, valid_out : UInt<1>}

    inst mac of mac @[fir.scala 20:19]
    mac.clock <= clock
    mac.reset <= reset
    inst control of control @[fir.scala 21:23]
    control.clock <= clock
    control.reset <= reset
    inst ram of ram @[fir.scala 22:19]
    ram.clock <= clock
    ram.reset <= reset
    inst rom of rom @[fir.scala 23:19]
    rom.clock <= clock
    rom.reset <= reset
    wire rom_address_control_unit : UInt<3> @[fir.scala 26:38]
    wire ram_address_control_unit : UInt<3> @[fir.scala 27:37]
    wire ram_out_ram : UInt<8> @[fir.scala 28:24]
    wire rom_out_rom : UInt<8> @[fir.scala 29:24]
    wire en_control_unit : UInt<1> @[fir.scala 30:28]
    wire we_control_unit : UInt<1> @[fir.scala 31:28]
    reg mac_init_control_unit : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mac_init_control_unit) @[fir.scala 33:33]
    wire mac_init_mac : UInt<1> @[fir.scala 34:25]
    reg xt : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[fir.scala 36:19]
    mac_init_mac <= mac_init_control_unit @[fir.scala 38:16]
    when UInt<1>("h1") : @[fir.scala 39:16]
      xt <= io.x @[fir.scala 39:20]
    control.io.valid_in <= io.valid_in @[fir.scala 41:22]
    rom_address_control_unit <= control.io.rom_address @[fir.scala 41:60]
    ram_address_control_unit <= control.io.ram_address @[fir.scala 42:25]
    mac_init_control_unit <= control.io.mac_init @[fir.scala 43:22]
    we_control_unit <= control.io.we @[fir.scala 43:61]
    en_control_unit <= control.io.en @[fir.scala 43:94]
    rom.io.en <= en_control_unit @[fir.scala 45:13]
    rom.io.addr <= rom_address_control_unit @[fir.scala 45:45]
    rom_out_rom <= rom.io.rom_out @[fir.scala 45:89]
    ram.io.we <= we_control_unit @[fir.scala 47:13]
    ram.io.en <= en_control_unit @[fir.scala 47:43]
    ram.io.addr <= ram_address_control_unit @[fir.scala 47:75]
    ram.io.di <= xt @[fir.scala 48:13]
    ram_out_ram <= ram.io.dio @[fir.scala 48:31]
    mac.io.rom_out <= rom_out_rom @[fir.scala 50:18]
    mac.io.ram_out <= ram_out_ram @[fir.scala 50:49]
    mac.io.mac_init <= mac_init_mac @[fir.scala 50:81]
    io.y <= mac.io.y @[fir.scala 51:12]
    io.valid_out <= mac.io.valid_out @[fir.scala 51:38]

