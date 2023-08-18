module mac(
  input         clock,
  input         reset,
  input         io_mac_init,
  input  [7:0]  io_rom_out,
  input  [7:0]  io_ram_out,
  output [18:0] io_y,
  output        io_valid_out
);
  reg [2:0] counter; // @[mac.scala 16:24]
  reg [18:0] yt; // @[mac.scala 18:19]
  reg  valid_outt; // @[mac.scala 19:27]
  wire [15:0] _yt_T = io_rom_out * io_ram_out; // @[mac.scala 22:60]
  wire [18:0] _yt_T_1 = {3'h0,_yt_T}; // @[Cat.scala 33:92]
  wire [18:0] _GEN_7 = {{3'd0}, _yt_T}; // @[mac.scala 23:24]
  wire [18:0] _yt_T_4 = yt + _GEN_7; // @[mac.scala 23:24]
  wire  _T_5 = counter == 3'h6; // @[mac.scala 26:45]
  wire  _T_9 = io_mac_init & _T_5; // @[mac.scala 27:34]
  wire [2:0] _counter_T_1 = counter + 3'h1; // @[mac.scala 28:35]
  wire  _GEN_4 = ~io_mac_init & counter == 3'h6 | _T_9; // @[mac.scala 26:{54,83}]
  assign io_y = yt; // @[mac.scala 20:8]
  assign io_valid_out = valid_outt; // @[mac.scala 21:16]
  always @(posedge clock) begin
    if (reset) begin // @[mac.scala 16:24]
      counter <= 3'h0; // @[mac.scala 16:24]
    end else if (io_mac_init & counter != 3'h6) begin // @[mac.scala 25:49]
      counter <= 3'h0; // @[mac.scala 25:59]
    end else if (~io_mac_init & counter == 3'h6) begin // @[mac.scala 26:54]
      counter <= 3'h0; // @[mac.scala 26:64]
    end else if (io_mac_init & _T_5) begin // @[mac.scala 27:54]
      counter <= 3'h0; // @[mac.scala 27:64]
    end else begin
      counter <= _counter_T_1; // @[mac.scala 28:24]
    end
    if (reset) begin // @[mac.scala 18:19]
      yt <= 19'h0; // @[mac.scala 18:19]
    end else if (io_mac_init) begin // @[mac.scala 22:30]
      yt <= _yt_T_1; // @[mac.scala 22:34]
    end else begin
      yt <= _yt_T_4; // @[mac.scala 23:18]
    end
    if (reset) begin // @[mac.scala 19:27]
      valid_outt <= 1'h0; // @[mac.scala 19:27]
    end else if (io_mac_init & counter != 3'h6) begin // @[mac.scala 25:49]
      valid_outt <= 1'h0; // @[mac.scala 25:78]
    end else begin
      valid_outt <= _GEN_4;
    end
  end
endmodule
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
module ram(
  input        clock,
  input        reset,
  input        io_we,
  input        io_en,
  input  [2:0] io_addr,
  input  [7:0] io_di,
  output [7:0] io_dio
);
  reg [7:0] ram_0; // @[ram.scala 17:20]
  reg [7:0] ram_1; // @[ram.scala 17:20]
  reg [7:0] ram_2; // @[ram.scala 17:20]
  reg [7:0] ram_3; // @[ram.scala 17:20]
  reg [7:0] ram_4; // @[ram.scala 17:20]
  reg [7:0] ram_5; // @[ram.scala 17:20]
  reg [7:0] ram_6; // @[ram.scala 17:20]
  reg [7:0] ram_7; // @[ram.scala 17:20]
  reg [7:0] diot; // @[ram.scala 18:21]
  wire [7:0] _GEN_1 = 3'h1 == io_addr ? ram_1 : ram_0; // @[ram.scala 25:{23,23}]
  wire [7:0] _GEN_2 = 3'h2 == io_addr ? ram_2 : _GEN_1; // @[ram.scala 25:{23,23}]
  wire [7:0] _GEN_3 = 3'h3 == io_addr ? ram_3 : _GEN_2; // @[ram.scala 25:{23,23}]
  wire [7:0] _GEN_4 = 3'h4 == io_addr ? ram_4 : _GEN_3; // @[ram.scala 25:{23,23}]
  wire [7:0] _GEN_5 = 3'h5 == io_addr ? ram_5 : _GEN_4; // @[ram.scala 25:{23,23}]
  wire [7:0] _GEN_6 = 3'h6 == io_addr ? ram_6 : _GEN_5; // @[ram.scala 25:{23,23}]
  assign io_dio = diot; // @[ram.scala 20:10]
  always @(posedge clock) begin
    if (reset) begin // @[ram.scala 17:20]
      ram_0 <= 8'h0; // @[ram.scala 17:20]
    end else if (io_en) begin // @[ram.scala 21:23]
      if (io_we) begin // @[ram.scala 22:25]
        ram_0 <= io_di; // @[ram.scala 24:14]
      end
    end
    if (reset) begin // @[ram.scala 17:20]
      ram_1 <= 8'h0; // @[ram.scala 17:20]
    end else if (io_en) begin // @[ram.scala 21:23]
      if (io_we) begin // @[ram.scala 22:25]
        ram_1 <= ram_0; // @[ram.scala 23:34]
      end
    end
    if (reset) begin // @[ram.scala 17:20]
      ram_2 <= 8'h0; // @[ram.scala 17:20]
    end else if (io_en) begin // @[ram.scala 21:23]
      if (io_we) begin // @[ram.scala 22:25]
        ram_2 <= ram_1; // @[ram.scala 23:34]
      end
    end
    if (reset) begin // @[ram.scala 17:20]
      ram_3 <= 8'h0; // @[ram.scala 17:20]
    end else if (io_en) begin // @[ram.scala 21:23]
      if (io_we) begin // @[ram.scala 22:25]
        ram_3 <= ram_2; // @[ram.scala 23:34]
      end
    end
    if (reset) begin // @[ram.scala 17:20]
      ram_4 <= 8'h0; // @[ram.scala 17:20]
    end else if (io_en) begin // @[ram.scala 21:23]
      if (io_we) begin // @[ram.scala 22:25]
        ram_4 <= ram_3; // @[ram.scala 23:34]
      end
    end
    if (reset) begin // @[ram.scala 17:20]
      ram_5 <= 8'h0; // @[ram.scala 17:20]
    end else if (io_en) begin // @[ram.scala 21:23]
      if (io_we) begin // @[ram.scala 22:25]
        ram_5 <= ram_4; // @[ram.scala 23:34]
      end
    end
    if (reset) begin // @[ram.scala 17:20]
      ram_6 <= 8'h0; // @[ram.scala 17:20]
    end else if (io_en) begin // @[ram.scala 21:23]
      if (io_we) begin // @[ram.scala 22:25]
        ram_6 <= ram_5; // @[ram.scala 23:34]
      end
    end
    if (reset) begin // @[ram.scala 17:20]
      ram_7 <= 8'h0; // @[ram.scala 17:20]
    end else if (io_en) begin // @[ram.scala 21:23]
      if (io_we) begin // @[ram.scala 22:25]
        ram_7 <= ram_6; // @[ram.scala 23:34]
      end
    end
    if (reset) begin // @[ram.scala 18:21]
      diot <= 8'h0; // @[ram.scala 18:21]
    end else if (io_en) begin // @[ram.scala 21:23]
      if (io_we) begin // @[ram.scala 22:25]
        diot <= io_di; // @[ram.scala 24:29]
      end else if (3'h7 == io_addr) begin // @[ram.scala 25:23]
        diot <= ram_7; // @[ram.scala 25:23]
      end else begin
        diot <= _GEN_6;
      end
    end else begin
      diot <= 8'h0; // @[ram.scala 26:21]
    end
  end
endmodule
module rom(
  input        clock,
  input        reset,
  input        io_en,
  input  [2:0] io_addr,
  output [7:0] io_rom_out
);
  reg [7:0] romt; // @[rom.scala 26:21]
  wire [7:0] _GEN_1 = 3'h1 == io_addr ? 8'h7 : 8'h8; // @[rom.scala 29:{29,29}]
  wire [7:0] _GEN_2 = 3'h2 == io_addr ? 8'h6 : _GEN_1; // @[rom.scala 29:{29,29}]
  wire [7:0] _GEN_3 = 3'h3 == io_addr ? 8'h5 : _GEN_2; // @[rom.scala 29:{29,29}]
  wire [7:0] _GEN_4 = 3'h4 == io_addr ? 8'h4 : _GEN_3; // @[rom.scala 29:{29,29}]
  wire [7:0] _GEN_5 = 3'h5 == io_addr ? 8'h3 : _GEN_4; // @[rom.scala 29:{29,29}]
  assign io_rom_out = romt; // @[rom.scala 27:14]
  always @(posedge clock) begin
    if (reset) begin // @[rom.scala 26:21]
      romt <= 8'h0; // @[rom.scala 26:21]
    end else if (io_en) begin // @[rom.scala 29:23]
      if (3'h7 == io_addr) begin // @[rom.scala 29:29]
        romt <= 8'h1; // @[rom.scala 29:29]
      end else if (3'h6 == io_addr) begin // @[rom.scala 29:29]
        romt <= 8'h2; // @[rom.scala 29:29]
      end else begin
        romt <= _GEN_5;
      end
    end else begin
      romt <= 8'h0; // @[rom.scala 30:19]
    end
  end
endmodule
module fir(
  input         clock,
  input         reset,
  input         io_valid_in,
  input  [7:0]  io_x,
  output [18:0] io_y,
  output        io_valid_out
);
  wire  mac_clock; // @[fir.scala 20:19]
  wire  mac_reset; // @[fir.scala 20:19]
  wire  mac_io_mac_init; // @[fir.scala 20:19]
  wire [7:0] mac_io_rom_out; // @[fir.scala 20:19]
  wire [7:0] mac_io_ram_out; // @[fir.scala 20:19]
  wire [18:0] mac_io_y; // @[fir.scala 20:19]
  wire  mac_io_valid_out; // @[fir.scala 20:19]
  wire  control_clock; // @[fir.scala 21:23]
  wire  control_reset; // @[fir.scala 21:23]
  wire  control_io_valid_in; // @[fir.scala 21:23]
  wire [2:0] control_io_rom_address; // @[fir.scala 21:23]
  wire [2:0] control_io_ram_address; // @[fir.scala 21:23]
  wire  control_io_mac_init; // @[fir.scala 21:23]
  wire  control_io_we; // @[fir.scala 21:23]
  wire  control_io_en; // @[fir.scala 21:23]
  wire  ram_clock; // @[fir.scala 22:19]
  wire  ram_reset; // @[fir.scala 22:19]
  wire  ram_io_we; // @[fir.scala 22:19]
  wire  ram_io_en; // @[fir.scala 22:19]
  wire [2:0] ram_io_addr; // @[fir.scala 22:19]
  wire [7:0] ram_io_di; // @[fir.scala 22:19]
  wire [7:0] ram_io_dio; // @[fir.scala 22:19]
  wire  rom_clock; // @[fir.scala 23:19]
  wire  rom_reset; // @[fir.scala 23:19]
  wire  rom_io_en; // @[fir.scala 23:19]
  wire [2:0] rom_io_addr; // @[fir.scala 23:19]
  wire [7:0] rom_io_rom_out; // @[fir.scala 23:19]
  reg  mac_init_control_unit; // @[fir.scala 33:33]
  reg [7:0] xt; // @[fir.scala 36:19]
  mac mac ( // @[fir.scala 20:19]
    .clock(mac_clock),
    .reset(mac_reset),
    .io_mac_init(mac_io_mac_init),
    .io_rom_out(mac_io_rom_out),
    .io_ram_out(mac_io_ram_out),
    .io_y(mac_io_y),
    .io_valid_out(mac_io_valid_out)
  );
  control control ( // @[fir.scala 21:23]
    .clock(control_clock),
    .reset(control_reset),
    .io_valid_in(control_io_valid_in),
    .io_rom_address(control_io_rom_address),
    .io_ram_address(control_io_ram_address),
    .io_mac_init(control_io_mac_init),
    .io_we(control_io_we),
    .io_en(control_io_en)
  );
  ram ram ( // @[fir.scala 22:19]
    .clock(ram_clock),
    .reset(ram_reset),
    .io_we(ram_io_we),
    .io_en(ram_io_en),
    .io_addr(ram_io_addr),
    .io_di(ram_io_di),
    .io_dio(ram_io_dio)
  );
  rom rom ( // @[fir.scala 23:19]
    .clock(rom_clock),
    .reset(rom_reset),
    .io_en(rom_io_en),
    .io_addr(rom_io_addr),
    .io_rom_out(rom_io_rom_out)
  );
  assign io_y = mac_io_y; // @[fir.scala 51:12]
  assign io_valid_out = mac_io_valid_out; // @[fir.scala 51:38]
  assign mac_clock = clock;
  assign mac_reset = reset;
  assign mac_io_mac_init = mac_init_control_unit; // @[fir.scala 34:25 38:16]
  assign mac_io_rom_out = rom_io_rom_out; // @[fir.scala 29:24 45:89]
  assign mac_io_ram_out = ram_io_dio; // @[fir.scala 28:24 48:31]
  assign control_clock = clock;
  assign control_reset = reset;
  assign control_io_valid_in = io_valid_in; // @[fir.scala 41:22]
  assign ram_clock = clock;
  assign ram_reset = reset;
  assign ram_io_we = control_io_we; // @[fir.scala 31:28 43:61]
  assign ram_io_en = control_io_en; // @[fir.scala 30:28 43:94]
  assign ram_io_addr = control_io_ram_address; // @[fir.scala 27:37 42:25]
  assign ram_io_di = xt; // @[fir.scala 48:13]
  assign rom_clock = clock;
  assign rom_reset = reset;
  assign rom_io_en = control_io_en; // @[fir.scala 30:28 43:94]
  assign rom_io_addr = control_io_rom_address; // @[fir.scala 26:38 41:60]
  always @(posedge clock) begin
    mac_init_control_unit <= control_io_mac_init; // @[fir.scala 43:22]
    if (reset) begin // @[fir.scala 36:19]
      xt <= 8'h0; // @[fir.scala 36:19]
    end else begin
      xt <= io_x;
    end
  end
endmodule
