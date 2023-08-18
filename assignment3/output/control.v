module control(
  input        clock,
  input        reset,
  input        io_valid_in,
  output [2:0] io_rom_address,
  output [2:0] io_ram_address,
  output       io_mac_init,
  output       io_we,
  output       io_en
);
  reg [2:0] counter; // @[control.scala 17:24]
  reg  ent; // @[control.scala 19:20]
  reg  wet; // @[control.scala 20:20]
  reg  mac_initt; // @[control.scala 21:26]
  reg [2:0] rom_addresst; // @[control.scala 22:29]
  reg [2:0] ram_addresst; // @[control.scala 23:29]
  wire  _T = counter == 3'h0; // @[control.scala 31:16]
  wire [2:0] _counter_T_1 = counter + 3'h1; // @[control.scala 37:24]
  wire  _GEN_0 = counter != 3'h0 | ent; // @[control.scala 19:20 42:31 43:9]
  wire  _GEN_1 = counter != 3'h0 | wet; // @[control.scala 20:20 42:31 44:9]
  wire  _GEN_2 = counter != 3'h0 ? 1'h0 : mac_initt; // @[control.scala 42:31 45:15 21:26]
  wire  _GEN_6 = _T & ~io_valid_in ? 1'h0 : _GEN_0; // @[control.scala 38:54 39:9]
  wire  _GEN_7 = _T & ~io_valid_in ? 1'h0 : _GEN_1; // @[control.scala 38:54 40:9]
  wire  _GEN_8 = _T & ~io_valid_in | _GEN_2; // @[control.scala 38:54 41:15]
  wire  _GEN_12 = counter == 3'h0 & io_valid_in | _GEN_6; // @[control.scala 31:48 32:9]
  wire  _GEN_13 = counter == 3'h0 & io_valid_in | _GEN_7; // @[control.scala 31:48 33:9]
  wire  _GEN_14 = counter == 3'h0 & io_valid_in | _GEN_8; // @[control.scala 31:48 34:15]
  assign io_rom_address = rom_addresst; // @[control.scala 28:18]
  assign io_ram_address = ram_addresst; // @[control.scala 29:18]
  assign io_mac_init = mac_initt; // @[control.scala 27:15]
  assign io_we = wet; // @[control.scala 26:9]
  assign io_en = ent; // @[control.scala 25:9]
  always @(posedge clock) begin
    if (reset) begin // @[control.scala 17:24]
      counter <= 3'h0; // @[control.scala 17:24]
    end else if (counter == 3'h0 & io_valid_in) begin // @[control.scala 31:48]
      counter <= _counter_T_1; // @[control.scala 37:13]
    end else if (!(_T & ~io_valid_in)) begin // @[control.scala 38:54]
      if (counter != 3'h0) begin // @[control.scala 42:31]
        counter <= _counter_T_1; // @[control.scala 48:13]
      end
    end
    if (reset) begin // @[control.scala 19:20]
      ent <= 1'h0; // @[control.scala 19:20]
    end else begin
      ent <= _GEN_12;
    end
    if (reset) begin // @[control.scala 20:20]
      wet <= 1'h0; // @[control.scala 20:20]
    end else begin
      wet <= _GEN_13;
    end
    if (reset) begin // @[control.scala 21:26]
      mac_initt <= 1'h0; // @[control.scala 21:26]
    end else begin
      mac_initt <= _GEN_14;
    end
    if (reset) begin // @[control.scala 22:29]
      rom_addresst <= 3'h0; // @[control.scala 22:29]
    end else if (counter == 3'h0 & io_valid_in) begin // @[control.scala 31:48]
      rom_addresst <= counter; // @[control.scala 35:18]
    end else if (!(_T & ~io_valid_in)) begin // @[control.scala 38:54]
      if (counter != 3'h0) begin // @[control.scala 42:31]
        rom_addresst <= counter; // @[control.scala 46:18]
      end
    end
    if (reset) begin // @[control.scala 23:29]
      ram_addresst <= 3'h0; // @[control.scala 23:29]
    end else if (counter == 3'h0 & io_valid_in) begin // @[control.scala 31:48]
      ram_addresst <= counter; // @[control.scala 36:18]
    end else if (!(_T & ~io_valid_in)) begin // @[control.scala 38:54]
      if (counter != 3'h0) begin // @[control.scala 42:31]
        ram_addresst <= counter; // @[control.scala 47:18]
      end
    end
  end
endmodule
