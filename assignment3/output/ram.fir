circuit ram :
  module ram :
    input clock : Clock
    input reset : UInt<1>
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
    node _T = eq(io.en, UInt<1>("h1")) @[ram.scala 25:14]
    when _T : @[ram.scala 25:23]
      node _T_1 = eq(io.we, UInt<1>("h1")) @[ram.scala 26:16]
      when _T_1 : @[ram.scala 26:25]
        ram[1] <= ram[0] @[ram.scala 27:34]
        ram[2] <= ram[1] @[ram.scala 27:34]
        ram[3] <= ram[2] @[ram.scala 27:34]
        ram[4] <= ram[3] @[ram.scala 27:34]
        ram[5] <= ram[4] @[ram.scala 27:34]
        ram[6] <= ram[5] @[ram.scala 27:34]
        ram[7] <= ram[6] @[ram.scala 27:34]
        ram[0] <= io.di @[ram.scala 28:14]
        io.dio <= io.di @[ram.scala 29:14]
      else :
        io.dio <= ram[io.addr] @[ram.scala 31:14]
    else :
      io.dio <= UInt<1>("h0") @[ram.scala 34:12]

