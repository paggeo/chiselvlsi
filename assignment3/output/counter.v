module counter(
  input        clock,
  input        reset,
  input        io_valid_in,
  output [2:0] io_rom_address,
  output [2:0] io_ram_address,
  output       io_mac_init,
  output       io_we,
  output       io_en
);
  reg [2:0] counter; // @[counter.scala 17:24]
  reg  ent; // @[counter.scala 19:20]
  reg  wet; // @[counter.scala 20:20]
  reg  mac_initt; // @[counter.scala 21:26]
  reg  rom_addresst; // @[counter.scala 22:29]
  reg  ram_addresst; // @[counter.scala 23:29]
  wire  _T = counter == 3'h0; // @[counter.scala 29:16]
  wire [2:0] _counter_T_1 = counter + 3'h1; // @[counter.scala 35:24]
  wire  _GEN_0 = counter != 3'h0 | ent; // @[counter.scala 19:20 40:31 41:9]
  wire  _GEN_1 = counter != 3'h0 | wet; // @[counter.scala 20:20 40:31 42:9]
  wire  _GEN_2 = counter != 3'h0 ? 1'h0 : mac_initt; // @[counter.scala 40:31 43:15 21:26]
  wire [2:0] _GEN_3 = counter != 3'h0 ? counter : {{2'd0}, rom_addresst}; // @[counter.scala 40:31 44:18 22:29]
  wire [2:0] _GEN_4 = counter != 3'h0 ? counter : {{2'd0}, ram_addresst}; // @[counter.scala 40:31 45:18 23:29]
  wire  _GEN_6 = _T & ~io_valid_in ? 1'h0 : _GEN_0; // @[counter.scala 36:54 37:9]
  wire  _GEN_7 = _T & ~io_valid_in ? 1'h0 : _GEN_1; // @[counter.scala 36:54 38:9]
  wire  _GEN_8 = _T & ~io_valid_in | _GEN_2; // @[counter.scala 36:54 39:15]
  wire [2:0] _GEN_9 = _T & ~io_valid_in ? {{2'd0}, rom_addresst} : _GEN_3; // @[counter.scala 22:29 36:54]
  wire [2:0] _GEN_10 = _T & ~io_valid_in ? {{2'd0}, ram_addresst} : _GEN_4; // @[counter.scala 23:29 36:54]
  wire  _GEN_12 = counter == 3'h0 & io_valid_in | _GEN_6; // @[counter.scala 29:48 30:9]
  wire  _GEN_13 = counter == 3'h0 & io_valid_in | _GEN_7; // @[counter.scala 29:48 31:9]
  wire  _GEN_14 = counter == 3'h0 & io_valid_in | _GEN_8; // @[counter.scala 29:48 32:15]
  wire [2:0] _GEN_15 = counter == 3'h0 & io_valid_in ? counter : _GEN_9; // @[counter.scala 29:48 33:18]
  wire [2:0] _GEN_16 = counter == 3'h0 & io_valid_in ? counter : _GEN_10; // @[counter.scala 29:48 34:18]
  wire [2:0] _GEN_18 = reset ? 3'h0 : _GEN_15; // @[counter.scala 22:{29,29}]
  wire [2:0] _GEN_19 = reset ? 3'h0 : _GEN_16; // @[counter.scala 23:{29,29}]
  assign io_rom_address = {{2'd0}, rom_addresst}; // @[counter.scala 27:18]
  assign io_ram_address = {{2'd0}, ram_addresst}; // @[counter.scala 28:18]
  assign io_mac_init = mac_initt; // @[counter.scala 26:15]
  assign io_we = wet; // @[counter.scala 25:9]
  assign io_en = ent; // @[counter.scala 24:9]
  always @(posedge clock) begin
    if (reset) begin // @[counter.scala 17:24]
      counter <= 3'h0; // @[counter.scala 17:24]
    end else if (counter == 3'h0 & io_valid_in) begin // @[counter.scala 29:48]
      counter <= _counter_T_1; // @[counter.scala 35:13]
    end else if (!(_T & ~io_valid_in)) begin // @[counter.scala 36:54]
      if (counter != 3'h0) begin // @[counter.scala 40:31]
        counter <= _counter_T_1; // @[counter.scala 46:13]
      end
    end
    if (reset) begin // @[counter.scala 19:20]
      ent <= 1'h0; // @[counter.scala 19:20]
    end else begin
      ent <= _GEN_12;
    end
    if (reset) begin // @[counter.scala 20:20]
      wet <= 1'h0; // @[counter.scala 20:20]
    end else begin
      wet <= _GEN_13;
    end
    if (reset) begin // @[counter.scala 21:26]
      mac_initt <= 1'h0; // @[counter.scala 21:26]
    end else begin
      mac_initt <= _GEN_14;
    end
    rom_addresst <= _GEN_18[0]; // @[counter.scala 22:{29,29}]
    ram_addresst <= _GEN_19[0]; // @[counter.scala 23:{29,29}]
  end
endmodule
