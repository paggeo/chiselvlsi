module Barrel(
  input   clock,
  input   reset,
  input   io_din_0,
  input   io_din_1,
  input   io_din_2,
  input   io_din_3,
  input   io_si,
  input   io_pl,
  input   io_en,
  input   io_dir,
  output  io_so
);
  reg  reg_0; // @[barrelshifter.scala 18:20]
  reg  reg_1; // @[barrelshifter.scala 18:20]
  reg  reg_2; // @[barrelshifter.scala 18:20]
  reg  reg_3; // @[barrelshifter.scala 18:20]
  wire  _GEN_4 = ~io_dir ? reg_0 : reg_3; // @[barrelshifter.scala 24:28 29:15 35:15]
  wire  _GEN_9 = io_en & _GEN_4; // @[barrelshifter.scala 23:24 19:9]
  assign io_so = io_pl ? 1'h0 : _GEN_9; // @[barrelshifter.scala 20:22 19:9]
  always @(posedge clock) begin
    if (reset) begin // @[barrelshifter.scala 18:20]
      reg_0 <= 1'h0; // @[barrelshifter.scala 18:20]
    end else if (io_pl) begin // @[barrelshifter.scala 20:22]
      reg_0 <= io_din_0; // @[barrelshifter.scala 21:9]
    end else if (io_en) begin // @[barrelshifter.scala 23:24]
      if (~io_dir) begin // @[barrelshifter.scala 24:28]
        reg_0 <= reg_1; // @[barrelshifter.scala 26:20]
      end else begin
        reg_0 <= io_si; // @[barrelshifter.scala 34:16]
      end
    end
    if (reset) begin // @[barrelshifter.scala 18:20]
      reg_1 <= 1'h0; // @[barrelshifter.scala 18:20]
    end else if (io_pl) begin // @[barrelshifter.scala 20:22]
      reg_1 <= io_din_1; // @[barrelshifter.scala 21:9]
    end else if (io_en) begin // @[barrelshifter.scala 23:24]
      if (~io_dir) begin // @[barrelshifter.scala 24:28]
        reg_1 <= reg_2; // @[barrelshifter.scala 26:20]
      end else begin
        reg_1 <= reg_0; // @[barrelshifter.scala 32:20]
      end
    end
    if (reset) begin // @[barrelshifter.scala 18:20]
      reg_2 <= 1'h0; // @[barrelshifter.scala 18:20]
    end else if (io_pl) begin // @[barrelshifter.scala 20:22]
      reg_2 <= io_din_2; // @[barrelshifter.scala 21:9]
    end else if (io_en) begin // @[barrelshifter.scala 23:24]
      if (~io_dir) begin // @[barrelshifter.scala 24:28]
        reg_2 <= reg_3; // @[barrelshifter.scala 26:20]
      end else begin
        reg_2 <= reg_1; // @[barrelshifter.scala 32:20]
      end
    end
    if (reset) begin // @[barrelshifter.scala 18:20]
      reg_3 <= 1'h0; // @[barrelshifter.scala 18:20]
    end else if (io_pl) begin // @[barrelshifter.scala 20:22]
      reg_3 <= io_din_3; // @[barrelshifter.scala 21:9]
    end else if (io_en) begin // @[barrelshifter.scala 23:24]
      if (~io_dir) begin // @[barrelshifter.scala 24:28]
        reg_3 <= io_si; // @[barrelshifter.scala 28:16]
      end else begin
        reg_3 <= reg_2; // @[barrelshifter.scala 32:20]
      end
    end
  end
endmodule
