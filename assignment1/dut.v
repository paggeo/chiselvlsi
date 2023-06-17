module counter(
  input        clock,
  input        reset,
  input  [9:0] io_din,
  input        io_en,
  input        io_mod,
  input        io_dir,
  output [9:0] io_dout
);
  reg [9:0] count; // @[counter.scala 17:22]
  wire [9:0] _count_T_1 = count + 10'h1; // @[counter.scala 22:26]
  wire [9:0] _GEN_0 = count != io_din ? _count_T_1 : 10'h0; // @[counter.scala 21:32 22:17 24:17]
  wire [9:0] _count_T_5 = count - 10'h1; // @[counter.scala 30:22]
  assign io_dout = count; // @[counter.scala 33:11]
  always @(posedge clock) begin
    if (reset) begin // @[counter.scala 17:22]
      count <= 10'h0; // @[counter.scala 17:22]
    end else if (io_en) begin // @[counter.scala 18:22]
      if (io_dir) begin // @[counter.scala 19:25]
        if (io_mod) begin // @[counter.scala 20:27]
          count <= _GEN_0;
        end else begin
          count <= _count_T_1; // @[counter.scala 27:15]
        end
      end else begin
        count <= _count_T_5; // @[counter.scala 30:13]
      end
    end
  end
endmodule
