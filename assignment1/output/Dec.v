module Dec(
  input   clock,
  input   reset,
  input   io_input_0,
  input   io_input_1,
  input   io_input_2,
  output  io_output_0,
  output  io_output_1,
  output  io_output_2,
  output  io_output_3,
  output  io_output_4,
  output  io_output_5,
  output  io_output_6,
  output  io_output_7
);
  wire [2:0] input_ = {io_input_2,io_input_1,io_input_0}; // @[dec.scala 18:30]
  assign io_output_0 = input_ == 3'h0; // @[dec.scala 21:17]
  assign io_output_1 = input_ == 3'h1; // @[dec.scala 21:17]
  assign io_output_2 = input_ == 3'h2; // @[dec.scala 21:17]
  assign io_output_3 = input_ == 3'h3; // @[dec.scala 21:17]
  assign io_output_4 = input_ == 3'h4; // @[dec.scala 21:17]
  assign io_output_5 = input_ == 3'h5; // @[dec.scala 21:17]
  assign io_output_6 = input_ == 3'h6; // @[dec.scala 21:17]
  assign io_output_7 = input_ == 3'h7; // @[dec.scala 21:17]
endmodule
