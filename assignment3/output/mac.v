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
  reg  yt; // @[mac.scala 18:19]
  reg  valid_outt; // @[mac.scala 19:27]
  wire [15:0] _yt_T_2 = io_rom_out * io_ram_out; // @[mac.scala 22:60]
  wire [18:0] _yt_T_3 = {3'h0,_yt_T_2}; // @[Cat.scala 33:92]
  wire [15:0] _GEN_7 = {{15'd0}, yt}; // @[mac.scala 23:24]
  wire [15:0] _yt_T_6 = _GEN_7 + _yt_T_2; // @[mac.scala 23:24]
  wire [18:0] _GEN_0 = io_mac_init ? _yt_T_3 : {{3'd0}, _yt_T_6}; // @[mac.scala 22:{30,34} 23:18]
  wire  _T_5 = counter == 3'h6; // @[mac.scala 26:45]
  wire  _T_9 = io_mac_init & _T_5; // @[mac.scala 27:34]
  wire [2:0] _counter_T_1 = counter + 3'h1; // @[mac.scala 28:35]
  wire  _GEN_4 = ~io_mac_init & counter == 3'h6 | _T_9; // @[mac.scala 26:{54,83}]
  wire [18:0] _GEN_8 = reset ? 19'h0 : _GEN_0; // @[mac.scala 18:{19,19}]
  assign io_y = {{18'd0}, yt}; // @[mac.scala 20:8]
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
    yt <= _GEN_8[0]; // @[mac.scala 18:{19,19}]
    if (reset) begin // @[mac.scala 19:27]
      valid_outt <= 1'h0; // @[mac.scala 19:27]
    end else if (io_mac_init & counter != 3'h6) begin // @[mac.scala 25:49]
      valid_outt <= 1'h0; // @[mac.scala 25:78]
    end else begin
      valid_outt <= _GEN_4;
    end
  end
endmodule
