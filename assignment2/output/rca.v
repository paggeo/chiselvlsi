module fulladder(
  input   io_A,
  input   io_B,
  input   io_C,
  output  io_Sum,
  output  io_Carry
);
  wire [1:0] _s1_T = {1'h0,io_A}; // @[Cat.scala 33:92]
  wire [1:0] _s1_T_1 = {1'h0,io_B}; // @[Cat.scala 33:92]
  wire [1:0] _s1_T_3 = _s1_T + _s1_T_1; // @[fulladder.scala 18:23]
  wire [1:0] _s1_T_4 = {1'h0,io_C}; // @[Cat.scala 33:92]
  wire [1:0] s1 = _s1_T_3 + _s1_T_4; // @[fulladder.scala 18:39]
  assign io_Sum = s1[0]; // @[fulladder.scala 19:15]
  assign io_Carry = s1[1]; // @[fulladder.scala 20:17]
endmodule
module rca(
  input        clock,
  input        reset,
  input  [3:0] io_A,
  input  [3:0] io_B,
  input        io_C,
  output [3:0] io_Sum,
  output       io_Carry
);
  wire  fa1_io_A; // @[rca.scala 17:19]
  wire  fa1_io_B; // @[rca.scala 17:19]
  wire  fa1_io_C; // @[rca.scala 17:19]
  wire  fa1_io_Sum; // @[rca.scala 17:19]
  wire  fa1_io_Carry; // @[rca.scala 17:19]
  wire  fa2_io_A; // @[rca.scala 18:19]
  wire  fa2_io_B; // @[rca.scala 18:19]
  wire  fa2_io_C; // @[rca.scala 18:19]
  wire  fa2_io_Sum; // @[rca.scala 18:19]
  wire  fa2_io_Carry; // @[rca.scala 18:19]
  wire  fa3_io_A; // @[rca.scala 19:19]
  wire  fa3_io_B; // @[rca.scala 19:19]
  wire  fa3_io_C; // @[rca.scala 19:19]
  wire  fa3_io_Sum; // @[rca.scala 19:19]
  wire  fa3_io_Carry; // @[rca.scala 19:19]
  wire  fa4_io_A; // @[rca.scala 20:19]
  wire  fa4_io_B; // @[rca.scala 20:19]
  wire  fa4_io_C; // @[rca.scala 20:19]
  wire  fa4_io_Sum; // @[rca.scala 20:19]
  wire  fa4_io_Carry; // @[rca.scala 20:19]
  wire [1:0] io_Sum_lo = {fa2_io_Sum,fa1_io_Sum}; // @[Cat.scala 33:92]
  wire [1:0] io_Sum_hi = {fa4_io_Sum,fa3_io_Sum}; // @[Cat.scala 33:92]
  fulladder fa1 ( // @[rca.scala 17:19]
    .io_A(fa1_io_A),
    .io_B(fa1_io_B),
    .io_C(fa1_io_C),
    .io_Sum(fa1_io_Sum),
    .io_Carry(fa1_io_Carry)
  );
  fulladder fa2 ( // @[rca.scala 18:19]
    .io_A(fa2_io_A),
    .io_B(fa2_io_B),
    .io_C(fa2_io_C),
    .io_Sum(fa2_io_Sum),
    .io_Carry(fa2_io_Carry)
  );
  fulladder fa3 ( // @[rca.scala 19:19]
    .io_A(fa3_io_A),
    .io_B(fa3_io_B),
    .io_C(fa3_io_C),
    .io_Sum(fa3_io_Sum),
    .io_Carry(fa3_io_Carry)
  );
  fulladder fa4 ( // @[rca.scala 20:19]
    .io_A(fa4_io_A),
    .io_B(fa4_io_B),
    .io_C(fa4_io_C),
    .io_Sum(fa4_io_Sum),
    .io_Carry(fa4_io_Carry)
  );
  assign io_Sum = {io_Sum_hi,io_Sum_lo}; // @[Cat.scala 33:92]
  assign io_Carry = fa4_io_Carry; // @[rca.scala 37:12]
  assign fa1_io_A = io_A[0]; // @[rca.scala 22:19]
  assign fa1_io_B = io_B[0]; // @[rca.scala 23:19]
  assign fa1_io_C = io_C; // @[rca.scala 24:12]
  assign fa2_io_A = io_A[1]; // @[rca.scala 26:19]
  assign fa2_io_B = io_B[1]; // @[rca.scala 27:19]
  assign fa2_io_C = fa1_io_Carry; // @[rca.scala 28:12]
  assign fa3_io_A = io_A[2]; // @[rca.scala 30:19]
  assign fa3_io_B = io_B[2]; // @[rca.scala 31:19]
  assign fa3_io_C = fa2_io_Carry; // @[rca.scala 32:12]
  assign fa4_io_A = io_A[3]; // @[rca.scala 34:19]
  assign fa4_io_B = io_B[3]; // @[rca.scala 35:19]
  assign fa4_io_C = fa3_io_Carry; // @[rca.scala 36:12]
endmodule
