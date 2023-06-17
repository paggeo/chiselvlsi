circuit counter :
  module counter :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip din : UInt<10>, flip en : UInt<1>, flip mod : UInt<1>, flip dir : UInt<1>, dout : UInt<10>}

    reg count : UInt<10>, clock with :
      reset => (reset, UInt<10>("h0")) @[counter.scala 17:22]
    node _T = eq(io.en, UInt<1>("h1")) @[counter.scala 18:14]
    when _T : @[counter.scala 18:22]
      node _T_1 = eq(io.dir, UInt<1>("h1")) @[counter.scala 19:17]
      when _T_1 : @[counter.scala 19:25]
        node _T_2 = eq(io.mod, UInt<1>("h1")) @[counter.scala 20:19]
        when _T_2 : @[counter.scala 20:27]
          node _T_3 = neq(count, io.din) @[counter.scala 21:21]
          when _T_3 : @[counter.scala 21:32]
            node _count_T = add(count, UInt<1>("h1")) @[counter.scala 22:26]
            node _count_T_1 = tail(_count_T, 1) @[counter.scala 22:26]
            count <= _count_T_1 @[counter.scala 22:17]
          else :
            count <= UInt<1>("h0") @[counter.scala 24:17]
        else :
          node _count_T_2 = add(count, UInt<1>("h1")) @[counter.scala 27:24]
          node _count_T_3 = tail(_count_T_2, 1) @[counter.scala 27:24]
          count <= _count_T_3 @[counter.scala 27:15]
      else :
        node _count_T_4 = sub(count, UInt<1>("h1")) @[counter.scala 30:22]
        node _count_T_5 = tail(_count_T_4, 1) @[counter.scala 30:22]
        count <= _count_T_5 @[counter.scala 30:13]
    io.dout <= count @[counter.scala 33:11]

