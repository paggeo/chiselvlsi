circuit mac :
  module mac :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip mac_init : UInt<1>, flip rom_out : UInt<8>, flip ram_out : UInt<8>, y : UInt<19>, valid_out : UInt<1>}

    reg counter : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[mac.scala 16:24]
    node _yt_T = dshr(UInt<1>("h0"), UInt<5>("h13")) @[mac.scala 18:23]
    node _yt_T_1 = bits(_yt_T, 0, 0) @[mac.scala 18:23]
    reg yt : UInt<1>, clock with :
      reset => (reset, _yt_T_1) @[mac.scala 18:19]
    node _valid_outt_T = dshr(UInt<1>("h0"), UInt<1>("h1")) @[mac.scala 19:31]
    node _valid_outt_T_1 = bits(_valid_outt_T, 0, 0) @[mac.scala 19:31]
    reg valid_outt : UInt<1>, clock with :
      reset => (reset, _valid_outt_T_1) @[mac.scala 19:27]
    io.y <= yt @[mac.scala 20:8]
    io.valid_out <= valid_outt @[mac.scala 21:16]
    node _T = eq(io.mac_init, UInt<1>("h1")) @[mac.scala 22:21]
    when _T : @[mac.scala 22:30]
      node _yt_T_2 = mul(io.rom_out, io.ram_out) @[mac.scala 22:60]
      node _yt_T_3 = cat(UInt<3>("h0"), _yt_T_2) @[Cat.scala 33:92]
      yt <= _yt_T_3 @[mac.scala 22:34]
    else :
      node _yt_T_4 = mul(io.rom_out, io.ram_out) @[mac.scala 23:36]
      node _yt_T_5 = add(yt, _yt_T_4) @[mac.scala 23:24]
      node _yt_T_6 = tail(_yt_T_5, 1) @[mac.scala 23:24]
      yt <= _yt_T_6 @[mac.scala 23:18]
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

