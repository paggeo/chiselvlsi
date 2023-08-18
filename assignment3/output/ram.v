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
  wire [7:0] _GEN_1 = 3'h1 == io_addr ? ram_1 : ram_0; // @[ram.scala 31:{14,14}]
  wire [7:0] _GEN_2 = 3'h2 == io_addr ? ram_2 : _GEN_1; // @[ram.scala 31:{14,14}]
  wire [7:0] _GEN_3 = 3'h3 == io_addr ? ram_3 : _GEN_2; // @[ram.scala 31:{14,14}]
  wire [7:0] _GEN_4 = 3'h4 == io_addr ? ram_4 : _GEN_3; // @[ram.scala 31:{14,14}]
  wire [7:0] _GEN_5 = 3'h5 == io_addr ? ram_5 : _GEN_4; // @[ram.scala 31:{14,14}]
  wire [7:0] _GEN_6 = 3'h6 == io_addr ? ram_6 : _GEN_5; // @[ram.scala 31:{14,14}]
  wire [7:0] _GEN_7 = 3'h7 == io_addr ? ram_7 : _GEN_6; // @[ram.scala 31:{14,14}]
  wire [7:0] _GEN_16 = io_we ? io_di : _GEN_7; // @[ram.scala 26:25 29:14 31:14]
  assign io_dio = io_en ? _GEN_16 : 8'h0; // @[ram.scala 25:23 34:12]
  always @(posedge clock) begin
    if (reset) begin // @[ram.scala 17:20]
      ram_0 <= 8'h0; // @[ram.scala 17:20]
    end else if (io_en) begin // @[ram.scala 25:23]
      if (io_we) begin // @[ram.scala 26:25]
        ram_0 <= io_di; // @[ram.scala 28:14]
      end
    end
    if (reset) begin // @[ram.scala 17:20]
      ram_1 <= 8'h0; // @[ram.scala 17:20]
    end else if (io_en) begin // @[ram.scala 25:23]
      if (io_we) begin // @[ram.scala 26:25]
        ram_1 <= ram_0; // @[ram.scala 27:34]
      end
    end
    if (reset) begin // @[ram.scala 17:20]
      ram_2 <= 8'h0; // @[ram.scala 17:20]
    end else if (io_en) begin // @[ram.scala 25:23]
      if (io_we) begin // @[ram.scala 26:25]
        ram_2 <= ram_1; // @[ram.scala 27:34]
      end
    end
    if (reset) begin // @[ram.scala 17:20]
      ram_3 <= 8'h0; // @[ram.scala 17:20]
    end else if (io_en) begin // @[ram.scala 25:23]
      if (io_we) begin // @[ram.scala 26:25]
        ram_3 <= ram_2; // @[ram.scala 27:34]
      end
    end
    if (reset) begin // @[ram.scala 17:20]
      ram_4 <= 8'h0; // @[ram.scala 17:20]
    end else if (io_en) begin // @[ram.scala 25:23]
      if (io_we) begin // @[ram.scala 26:25]
        ram_4 <= ram_3; // @[ram.scala 27:34]
      end
    end
    if (reset) begin // @[ram.scala 17:20]
      ram_5 <= 8'h0; // @[ram.scala 17:20]
    end else if (io_en) begin // @[ram.scala 25:23]
      if (io_we) begin // @[ram.scala 26:25]
        ram_5 <= ram_4; // @[ram.scala 27:34]
      end
    end
    if (reset) begin // @[ram.scala 17:20]
      ram_6 <= 8'h0; // @[ram.scala 17:20]
    end else if (io_en) begin // @[ram.scala 25:23]
      if (io_we) begin // @[ram.scala 26:25]
        ram_6 <= ram_5; // @[ram.scala 27:34]
      end
    end
    if (reset) begin // @[ram.scala 17:20]
      ram_7 <= 8'h0; // @[ram.scala 17:20]
    end else if (io_en) begin // @[ram.scala 25:23]
      if (io_we) begin // @[ram.scala 26:25]
        ram_7 <= ram_6; // @[ram.scala 27:34]
      end
    end
  end
endmodule
