module halfadder(
  input   clock,
  input   reset,
  input   io_A,
  input   io_B,
  output  io_Sum,
  output  io_Carry
);
  assign io_Sum = io_A ^ io_B; // @[halfadder.scala 16:18]
  assign io_Carry = io_A & io_B; // @[halfadder.scala 17:20]
endmodule
