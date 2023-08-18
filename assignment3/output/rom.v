module rom(
  input        clock,
  input        reset,
  input        io_en,
  input  [2:0] io_addr,
  output [7:0] io_rom_out
);
  reg [7:0] romt; // @[rom.scala 26:20]
  wire [7:0] _GEN_1 = 3'h1 == io_addr ? 8'h7 : 8'h8; // @[rom.scala 28:{12,12}]
  wire [7:0] _GEN_2 = 3'h2 == io_addr ? 8'h6 : _GEN_1; // @[rom.scala 28:{12,12}]
  wire [7:0] _GEN_3 = 3'h3 == io_addr ? 8'h5 : _GEN_2; // @[rom.scala 28:{12,12}]
  wire [7:0] _GEN_4 = 3'h4 == io_addr ? 8'h4 : _GEN_3; // @[rom.scala 28:{12,12}]
  wire [7:0] _GEN_5 = 3'h5 == io_addr ? 8'h3 : _GEN_4; // @[rom.scala 28:{12,12}]
  assign io_rom_out = romt; // @[rom.scala 32:14]
  always @(posedge clock) begin
    if (reset) begin // @[rom.scala 26:20]
      romt <= 8'h0; // @[rom.scala 26:20]
    end else if (io_en) begin // @[rom.scala 27:23]
      if (3'h7 == io_addr) begin // @[rom.scala 28:12]
        romt <= 8'h1; // @[rom.scala 28:12]
      end else if (3'h6 == io_addr) begin // @[rom.scala 28:12]
        romt <= 8'h2; // @[rom.scala 28:12]
      end else begin
        romt <= _GEN_5;
      end
    end else begin
      romt <= 8'h0; // @[rom.scala 30:9]
    end
  end
endmodule
