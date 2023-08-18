circuit rom :
  module rom :
    input clock : Clock
    input reset : UInt<1>
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
      reset => (reset, UInt<8>("h0")) @[rom.scala 26:20]
    node _T = eq(io.en, UInt<1>("h1")) @[rom.scala 27:14]
    when _T : @[rom.scala 27:23]
      romt <= rom[io.addr] @[rom.scala 28:12]
    else :
      romt <= UInt<1>("h0") @[rom.scala 30:9]
    io.rom_out <= romt @[rom.scala 32:14]

