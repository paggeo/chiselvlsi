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
module bcaserial(
  input  [3:0] io_A,
  input  [3:0] io_B,
  input        io_C,
  output [3:0] io_Sum,
  output       io_Carry
);
  wire [3:0] rca1_io_A; // @[bcaserial.scala 17:20]
  wire [3:0] rca1_io_B; // @[bcaserial.scala 17:20]
  wire  rca1_io_C; // @[bcaserial.scala 17:20]
  wire [3:0] rca1_io_Sum; // @[bcaserial.scala 17:20]
  wire  rca1_io_Carry; // @[bcaserial.scala 17:20]
  wire [3:0] rca2_io_A; // @[bcaserial.scala 18:20]
  wire [3:0] rca2_io_B; // @[bcaserial.scala 18:20]
  wire  rca2_io_C; // @[bcaserial.scala 18:20]
  wire [3:0] rca2_io_Sum; // @[bcaserial.scala 18:20]
  wire  rca2_io_Carry; // @[bcaserial.scala 18:20]
  wire [3:0] rca1_sum = rca1_io_Sum; // @[bcaserial.scala 20:22 30:12]
  wire  and1 = rca1_sum[3] & rca1_sum[2]; // @[bcaserial.scala 33:23]
  wire  and2 = rca1_sum[3] & rca1_sum[1]; // @[bcaserial.scala 34:23]
  wire  rca1_carry = rca1_io_Carry; // @[bcaserial.scala 21:24 31:14]
  wire  or1 = and1 | and2 | rca1_carry; // @[bcaserial.scala 35:22]
  wire [1:0] second_input_lo = {or1,1'h0}; // @[Cat.scala 33:92]
  wire [1:0] second_input_hi = {1'h0,or1}; // @[Cat.scala 33:92]
  rca rca1 ( // @[bcaserial.scala 17:20]
    .io_A(rca1_io_A),
    .io_B(rca1_io_B),
    .io_C(rca1_io_C),
    .io_Sum(rca1_io_Sum),
    .io_Carry(rca1_io_Carry)
  );
  rca rca2 ( // @[bcaserial.scala 18:20]
    .io_A(rca2_io_A),
    .io_B(rca2_io_B),
    .io_C(rca2_io_C),
    .io_Sum(rca2_io_Sum),
    .io_Carry(rca2_io_Carry)
  );
  assign io_Sum = rca2_io_Sum; // @[bcaserial.scala 41:10]
  assign io_Carry = and1 | and2 | rca1_carry; // @[bcaserial.scala 35:22]
  assign rca1_io_A = io_A; // @[bcaserial.scala 27:13]
  assign rca1_io_B = io_B; // @[bcaserial.scala 28:13]
  assign rca1_io_C = io_C; // @[bcaserial.scala 29:13]
  assign rca2_io_A = {second_input_hi,second_input_lo}; // @[Cat.scala 33:92]
  assign rca2_io_B = rca1_io_Sum; // @[bcaserial.scala 20:22 30:12]
  assign rca2_io_C = 1'h0; // @[bcaserial.scala 40:13]
endmodule
module bcaparallel(
  input         clock,
  input         reset,
  input  [15:0] io_A,
  input  [15:0] io_B,
  input         io_C,
  output [15:0] io_Sum,
  output        io_Carry
);
  wire [3:0] bca1_io_A; // @[bcaparallel.scala 17:20]
  wire [3:0] bca1_io_B; // @[bcaparallel.scala 17:20]
  wire  bca1_io_C; // @[bcaparallel.scala 17:20]
  wire [3:0] bca1_io_Sum; // @[bcaparallel.scala 17:20]
  wire  bca1_io_Carry; // @[bcaparallel.scala 17:20]
  wire [3:0] bca2_io_A; // @[bcaparallel.scala 18:20]
  wire [3:0] bca2_io_B; // @[bcaparallel.scala 18:20]
  wire  bca2_io_C; // @[bcaparallel.scala 18:20]
  wire [3:0] bca2_io_Sum; // @[bcaparallel.scala 18:20]
  wire  bca2_io_Carry; // @[bcaparallel.scala 18:20]
  wire [3:0] bca3_io_A; // @[bcaparallel.scala 19:20]
  wire [3:0] bca3_io_B; // @[bcaparallel.scala 19:20]
  wire  bca3_io_C; // @[bcaparallel.scala 19:20]
  wire [3:0] bca3_io_Sum; // @[bcaparallel.scala 19:20]
  wire  bca3_io_Carry; // @[bcaparallel.scala 19:20]
  wire [3:0] bca4_io_A; // @[bcaparallel.scala 20:20]
  wire [3:0] bca4_io_B; // @[bcaparallel.scala 20:20]
  wire  bca4_io_C; // @[bcaparallel.scala 20:20]
  wire [3:0] bca4_io_Sum; // @[bcaparallel.scala 20:20]
  wire  bca4_io_Carry; // @[bcaparallel.scala 20:20]
  wire [3:0] sum2 = bca2_io_Sum; // @[bcaparallel.scala 25:18 41:8]
  wire [3:0] sum1 = bca1_io_Sum; // @[bcaparallel.scala 24:18 33:8]
  wire [7:0] io_Sum_lo = {sum2,sum1}; // @[Cat.scala 33:92]
  wire [3:0] sum4 = bca4_io_Sum; // @[bcaparallel.scala 27:18 54:8]
  wire [3:0] sum3 = bca3_io_Sum; // @[bcaparallel.scala 26:18 48:8]
  wire [7:0] io_Sum_hi = {sum4,sum3}; // @[Cat.scala 33:92]
  bcaserial bca1 ( // @[bcaparallel.scala 17:20]
    .io_A(bca1_io_A),
    .io_B(bca1_io_B),
    .io_C(bca1_io_C),
    .io_Sum(bca1_io_Sum),
    .io_Carry(bca1_io_Carry)
  );
  bcaserial bca2 ( // @[bcaparallel.scala 18:20]
    .io_A(bca2_io_A),
    .io_B(bca2_io_B),
    .io_C(bca2_io_C),
    .io_Sum(bca2_io_Sum),
    .io_Carry(bca2_io_Carry)
  );
  bcaserial bca3 ( // @[bcaparallel.scala 19:20]
    .io_A(bca3_io_A),
    .io_B(bca3_io_B),
    .io_C(bca3_io_C),
    .io_Sum(bca3_io_Sum),
    .io_Carry(bca3_io_Carry)
  );
  bcaserial bca4 ( // @[bcaparallel.scala 20:20]
    .io_A(bca4_io_A),
    .io_B(bca4_io_B),
    .io_C(bca4_io_C),
    .io_Sum(bca4_io_Sum),
    .io_Carry(bca4_io_Carry)
  );
  assign io_Sum = {io_Sum_hi,io_Sum_lo}; // @[Cat.scala 33:92]
  assign io_Carry = bca4_io_Carry; // @[bcaparallel.scala 53:12]
  assign bca1_io_A = io_A[3:0]; // @[bcaparallel.scala 29:20]
  assign bca1_io_B = io_B[3:0]; // @[bcaparallel.scala 30:20]
  assign bca1_io_C = io_C; // @[bcaparallel.scala 31:13]
  assign bca2_io_A = io_A[7:4]; // @[bcaparallel.scala 37:20]
  assign bca2_io_B = io_B[7:4]; // @[bcaparallel.scala 38:20]
  assign bca2_io_C = bca1_io_Carry; // @[bcaparallel.scala 21:20 32:10]
  assign bca3_io_A = io_A[11:8]; // @[bcaparallel.scala 44:20]
  assign bca3_io_B = io_B[11:8]; // @[bcaparallel.scala 45:20]
  assign bca3_io_C = bca2_io_Carry; // @[bcaparallel.scala 22:20 40:10]
  assign bca4_io_A = io_A[15:12]; // @[bcaparallel.scala 50:20]
  assign bca4_io_B = io_B[15:12]; // @[bcaparallel.scala 51:20]
  assign bca4_io_C = bca3_io_Carry; // @[bcaparallel.scala 23:20 47:10]
endmodule
