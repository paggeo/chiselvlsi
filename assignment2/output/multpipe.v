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
module multpipe(
  input        clock,
  input        reset,
  input  [3:0] io_A,
  input  [3:0] io_B,
  output       io_P_0,
  output       io_P_1,
  output       io_P_2,
  output       io_P_3,
  output       io_P_4,
  output       io_P_5,
  output       io_P_6,
  output       io_P_7
);
  wire  fulladder_io_A; // @[multpipe.scala 15:33]
  wire  fulladder_io_B; // @[multpipe.scala 15:33]
  wire  fulladder_io_C; // @[multpipe.scala 15:33]
  wire  fulladder_io_Sum; // @[multpipe.scala 15:33]
  wire  fulladder_io_Carry; // @[multpipe.scala 15:33]
  wire  fulladder_1_io_A; // @[multpipe.scala 15:33]
  wire  fulladder_1_io_B; // @[multpipe.scala 15:33]
  wire  fulladder_1_io_C; // @[multpipe.scala 15:33]
  wire  fulladder_1_io_Sum; // @[multpipe.scala 15:33]
  wire  fulladder_1_io_Carry; // @[multpipe.scala 15:33]
  wire  fulladder_2_io_A; // @[multpipe.scala 15:33]
  wire  fulladder_2_io_B; // @[multpipe.scala 15:33]
  wire  fulladder_2_io_C; // @[multpipe.scala 15:33]
  wire  fulladder_2_io_Sum; // @[multpipe.scala 15:33]
  wire  fulladder_2_io_Carry; // @[multpipe.scala 15:33]
  wire  fulladder_3_io_A; // @[multpipe.scala 15:33]
  wire  fulladder_3_io_B; // @[multpipe.scala 15:33]
  wire  fulladder_3_io_C; // @[multpipe.scala 15:33]
  wire  fulladder_3_io_Sum; // @[multpipe.scala 15:33]
  wire  fulladder_3_io_Carry; // @[multpipe.scala 15:33]
  wire  fulladder_4_io_A; // @[multpipe.scala 15:33]
  wire  fulladder_4_io_B; // @[multpipe.scala 15:33]
  wire  fulladder_4_io_C; // @[multpipe.scala 15:33]
  wire  fulladder_4_io_Sum; // @[multpipe.scala 15:33]
  wire  fulladder_4_io_Carry; // @[multpipe.scala 15:33]
  wire  fulladder_5_io_A; // @[multpipe.scala 15:33]
  wire  fulladder_5_io_B; // @[multpipe.scala 15:33]
  wire  fulladder_5_io_C; // @[multpipe.scala 15:33]
  wire  fulladder_5_io_Sum; // @[multpipe.scala 15:33]
  wire  fulladder_5_io_Carry; // @[multpipe.scala 15:33]
  wire  fulladder_6_io_A; // @[multpipe.scala 15:33]
  wire  fulladder_6_io_B; // @[multpipe.scala 15:33]
  wire  fulladder_6_io_C; // @[multpipe.scala 15:33]
  wire  fulladder_6_io_Sum; // @[multpipe.scala 15:33]
  wire  fulladder_6_io_Carry; // @[multpipe.scala 15:33]
  wire  fulladder_7_io_A; // @[multpipe.scala 15:33]
  wire  fulladder_7_io_B; // @[multpipe.scala 15:33]
  wire  fulladder_7_io_C; // @[multpipe.scala 15:33]
  wire  fulladder_7_io_Sum; // @[multpipe.scala 15:33]
  wire  fulladder_7_io_Carry; // @[multpipe.scala 15:33]
  wire  fulladder_8_io_A; // @[multpipe.scala 15:33]
  wire  fulladder_8_io_B; // @[multpipe.scala 15:33]
  wire  fulladder_8_io_C; // @[multpipe.scala 15:33]
  wire  fulladder_8_io_Sum; // @[multpipe.scala 15:33]
  wire  fulladder_8_io_Carry; // @[multpipe.scala 15:33]
  wire  fulladder_9_io_A; // @[multpipe.scala 15:33]
  wire  fulladder_9_io_B; // @[multpipe.scala 15:33]
  wire  fulladder_9_io_C; // @[multpipe.scala 15:33]
  wire  fulladder_9_io_Sum; // @[multpipe.scala 15:33]
  wire  fulladder_9_io_Carry; // @[multpipe.scala 15:33]
  wire  fulladder_10_io_A; // @[multpipe.scala 15:33]
  wire  fulladder_10_io_B; // @[multpipe.scala 15:33]
  wire  fulladder_10_io_C; // @[multpipe.scala 15:33]
  wire  fulladder_10_io_Sum; // @[multpipe.scala 15:33]
  wire  fulladder_10_io_Carry; // @[multpipe.scala 15:33]
  wire  fulladder_11_io_A; // @[multpipe.scala 15:33]
  wire  fulladder_11_io_B; // @[multpipe.scala 15:33]
  wire  fulladder_11_io_C; // @[multpipe.scala 15:33]
  wire  fulladder_11_io_Sum; // @[multpipe.scala 15:33]
  wire  fulladder_11_io_Carry; // @[multpipe.scala 15:33]
  wire  fulladder_12_io_A; // @[multpipe.scala 15:33]
  wire  fulladder_12_io_B; // @[multpipe.scala 15:33]
  wire  fulladder_12_io_C; // @[multpipe.scala 15:33]
  wire  fulladder_12_io_Sum; // @[multpipe.scala 15:33]
  wire  fulladder_12_io_Carry; // @[multpipe.scala 15:33]
  wire  fulladder_13_io_A; // @[multpipe.scala 15:33]
  wire  fulladder_13_io_B; // @[multpipe.scala 15:33]
  wire  fulladder_13_io_C; // @[multpipe.scala 15:33]
  wire  fulladder_13_io_Sum; // @[multpipe.scala 15:33]
  wire  fulladder_13_io_Carry; // @[multpipe.scala 15:33]
  reg [3:0] sarr_0_0; // @[multpipe.scala 18:21]
  reg [3:0] sarr_0_1; // @[multpipe.scala 18:21]
  reg [3:0] sarr_0_2; // @[multpipe.scala 18:21]
  reg [3:0] sarr_1_0; // @[multpipe.scala 18:21]
  reg [3:0] sarr_1_1; // @[multpipe.scala 18:21]
  reg [3:0] sarr_1_2; // @[multpipe.scala 18:21]
  reg [3:0] sarr_1_3; // @[multpipe.scala 18:21]
  reg [3:0] sarr_2_0; // @[multpipe.scala 18:21]
  reg [3:0] sarr_2_1; // @[multpipe.scala 18:21]
  reg [3:0] sarr_2_2; // @[multpipe.scala 18:21]
  reg [3:0] sarr_3_0; // @[multpipe.scala 18:21]
  reg [3:0] sarr_3_1; // @[multpipe.scala 18:21]
  reg [3:0] sarr_3_2; // @[multpipe.scala 18:21]
  reg [3:0] sarr_3_3; // @[multpipe.scala 18:21]
  reg  c1_var_0; // @[multpipe.scala 19:23]
  reg  c1_var_1; // @[multpipe.scala 19:23]
  reg  c1_var_2; // @[multpipe.scala 19:23]
  reg  c2_var_0; // @[multpipe.scala 21:23]
  reg  c2_var_1; // @[multpipe.scala 21:23]
  reg  c_var_0; // @[multpipe.scala 23:22]
  reg  c_var_2; // @[multpipe.scala 23:22]
  reg  c_var_3; // @[multpipe.scala 23:22]
  reg  c_var_4; // @[multpipe.scala 23:22]
  reg  s1_var0_0; // @[multpipe.scala 33:24]
  reg  s1_var0_1; // @[multpipe.scala 33:24]
  reg  s1_var0_2; // @[multpipe.scala 33:24]
  reg  s1_var0_3; // @[multpipe.scala 33:24]
  reg  s1_var0_4; // @[multpipe.scala 33:24]
  reg  s1_var0_5; // @[multpipe.scala 33:24]
  reg  s1_var1_0; // @[multpipe.scala 34:24]
  reg  s1_var1_1; // @[multpipe.scala 34:24]
  reg  s1_var1_2; // @[multpipe.scala 34:24]
  reg  s1_var1_3; // @[multpipe.scala 34:24]
  reg  s1_var1_4; // @[multpipe.scala 34:24]
  reg  s1_var1_5; // @[multpipe.scala 34:24]
  reg  s1_var2_0; // @[multpipe.scala 35:24]
  reg  s1_var2_1; // @[multpipe.scala 35:24]
  reg  s1_var2_2; // @[multpipe.scala 35:24]
  reg  s1_var2_3; // @[multpipe.scala 35:24]
  reg  s1_var2_4; // @[multpipe.scala 35:24]
  reg  s1_var2_5; // @[multpipe.scala 35:24]
  reg  s1_var3_5; // @[multpipe.scala 36:24]
  reg  s2_var0_0; // @[multpipe.scala 43:24]
  reg  s2_var0_1; // @[multpipe.scala 43:24]
  reg  s2_var0_2; // @[multpipe.scala 43:24]
  reg  s2_var0_3; // @[multpipe.scala 43:24]
  reg  s2_var0_4; // @[multpipe.scala 43:24]
  reg  s2_var0_5; // @[multpipe.scala 43:24]
  reg  s2_var1_0; // @[multpipe.scala 44:24]
  reg  s2_var1_1; // @[multpipe.scala 44:24]
  reg  s2_var1_2; // @[multpipe.scala 44:24]
  reg  s2_var1_3; // @[multpipe.scala 44:24]
  reg  s2_var1_4; // @[multpipe.scala 44:24]
  reg  s2_var1_5; // @[multpipe.scala 44:24]
  reg  s2_var2_0; // @[multpipe.scala 45:24]
  reg  s2_var2_1; // @[multpipe.scala 45:24]
  reg  s2_var2_2; // @[multpipe.scala 45:24]
  reg  s2_var2_3; // @[multpipe.scala 45:24]
  reg  s2_var2_4; // @[multpipe.scala 45:24]
  reg  s2_var2_5; // @[multpipe.scala 45:24]
  reg  s2_var3_0; // @[multpipe.scala 46:24]
  reg  s2_var3_1; // @[multpipe.scala 46:24]
  reg  s2_var3_2; // @[multpipe.scala 46:24]
  reg  s2_var3_3; // @[multpipe.scala 46:24]
  reg  s2_var3_4; // @[multpipe.scala 46:24]
  reg  s2_var3_5; // @[multpipe.scala 46:24]
  reg  s2_var4_1; // @[multpipe.scala 47:24]
  reg  s2_var4_2; // @[multpipe.scala 47:24]
  reg  s2_var4_3; // @[multpipe.scala 47:24]
  reg  s2_var4_4; // @[multpipe.scala 47:24]
  reg  s2_var4_5; // @[multpipe.scala 47:24]
  reg  s2_var5_5; // @[multpipe.scala 48:24]
  reg  teliko1_0; // @[multpipe.scala 56:24]
  reg  teliko1_1; // @[multpipe.scala 56:24]
  reg  teliko1_2; // @[multpipe.scala 56:24]
  reg  teliko1_3; // @[multpipe.scala 56:24]
  reg  teliko1_4; // @[multpipe.scala 56:24]
  reg  teliko1_5; // @[multpipe.scala 56:24]
  reg  teliko1_6; // @[multpipe.scala 56:24]
  reg  teliko2_0; // @[multpipe.scala 57:24]
  reg  teliko2_1; // @[multpipe.scala 57:24]
  reg  teliko2_2; // @[multpipe.scala 57:24]
  reg  teliko2_3; // @[multpipe.scala 57:24]
  reg  teliko2_4; // @[multpipe.scala 57:24]
  reg  teliko2_5; // @[multpipe.scala 57:24]
  reg  teliko3_0; // @[multpipe.scala 58:24]
  reg  teliko3_1; // @[multpipe.scala 58:24]
  reg  teliko3_2; // @[multpipe.scala 58:24]
  reg  teliko3_3; // @[multpipe.scala 58:24]
  reg  teliko3_4; // @[multpipe.scala 58:24]
  reg  teliko4_0; // @[multpipe.scala 59:24]
  reg  teliko4_1; // @[multpipe.scala 59:24]
  reg  teliko4_2; // @[multpipe.scala 59:24]
  reg  teliko4_3; // @[multpipe.scala 59:24]
  reg  teliko5_0; // @[multpipe.scala 60:24]
  reg  teliko5_1; // @[multpipe.scala 60:24]
  reg  teliko5_2; // @[multpipe.scala 60:24]
  reg  teliko6_0; // @[multpipe.scala 61:24]
  wire  s1_temp_0 = sarr_0_0[0]; // @[multpipe.scala 109:27]
  wire  s2_temp_0 = sarr_2_0[0]; // @[multpipe.scala 110:27]
  wire  c1_temp_0 = fulladder_io_Carry; // @[multpipe.scala 115:14 20:25]
  wire  c1_temp_1 = fulladder_1_io_Carry; // @[multpipe.scala 121:19 20:25]
  wire  c1_temp_2 = fulladder_2_io_Carry; // @[multpipe.scala 127:19 20:25]
  wire  c2_temp_0 = fulladder_4_io_Carry; // @[multpipe.scala 139:19 22:25]
  wire  c2_temp_1 = fulladder_5_io_Carry; // @[multpipe.scala 145:19 22:25]
  wire  c_temp_0 = fulladder_8_io_Carry; // @[multpipe.scala 163:13 24:24]
  wire  c_temp_2 = fulladder_10_io_Carry; // @[multpipe.scala 175:13 24:24]
  wire  c_temp_3 = fulladder_11_io_Carry; // @[multpipe.scala 181:13 24:24]
  wire  c_temp_4 = fulladder_12_io_Carry; // @[multpipe.scala 187:13 24:24]
  wire  s1_temp_1 = fulladder_io_Sum; // @[multpipe.scala 114:14 32:25]
  wire  s1_temp_2 = fulladder_1_io_Sum; // @[multpipe.scala 120:19 32:25]
  wire  s1_temp_3 = fulladder_2_io_Sum; // @[multpipe.scala 126:19 32:25]
  wire  s1_temp_4 = fulladder_3_io_Sum; // @[multpipe.scala 132:19 32:25]
  wire  s1_temp_5 = fulladder_3_io_Carry; // @[multpipe.scala 133:19 32:25]
  wire  s2_temp_1 = fulladder_4_io_Sum; // @[multpipe.scala 138:19 42:25]
  wire  s2_temp_2 = fulladder_5_io_Sum; // @[multpipe.scala 144:19 42:25]
  wire  s2_temp_3 = fulladder_6_io_Sum; // @[multpipe.scala 150:19 42:25]
  wire  s2_temp_4 = fulladder_7_io_Sum; // @[multpipe.scala 156:14 42:25]
  wire  s2_temp_5 = fulladder_7_io_Carry; // @[multpipe.scala 157:14 42:25]
  fulladder fulladder ( // @[multpipe.scala 15:33]
    .io_A(fulladder_io_A),
    .io_B(fulladder_io_B),
    .io_C(fulladder_io_C),
    .io_Sum(fulladder_io_Sum),
    .io_Carry(fulladder_io_Carry)
  );
  fulladder fulladder_1 ( // @[multpipe.scala 15:33]
    .io_A(fulladder_1_io_A),
    .io_B(fulladder_1_io_B),
    .io_C(fulladder_1_io_C),
    .io_Sum(fulladder_1_io_Sum),
    .io_Carry(fulladder_1_io_Carry)
  );
  fulladder fulladder_2 ( // @[multpipe.scala 15:33]
    .io_A(fulladder_2_io_A),
    .io_B(fulladder_2_io_B),
    .io_C(fulladder_2_io_C),
    .io_Sum(fulladder_2_io_Sum),
    .io_Carry(fulladder_2_io_Carry)
  );
  fulladder fulladder_3 ( // @[multpipe.scala 15:33]
    .io_A(fulladder_3_io_A),
    .io_B(fulladder_3_io_B),
    .io_C(fulladder_3_io_C),
    .io_Sum(fulladder_3_io_Sum),
    .io_Carry(fulladder_3_io_Carry)
  );
  fulladder fulladder_4 ( // @[multpipe.scala 15:33]
    .io_A(fulladder_4_io_A),
    .io_B(fulladder_4_io_B),
    .io_C(fulladder_4_io_C),
    .io_Sum(fulladder_4_io_Sum),
    .io_Carry(fulladder_4_io_Carry)
  );
  fulladder fulladder_5 ( // @[multpipe.scala 15:33]
    .io_A(fulladder_5_io_A),
    .io_B(fulladder_5_io_B),
    .io_C(fulladder_5_io_C),
    .io_Sum(fulladder_5_io_Sum),
    .io_Carry(fulladder_5_io_Carry)
  );
  fulladder fulladder_6 ( // @[multpipe.scala 15:33]
    .io_A(fulladder_6_io_A),
    .io_B(fulladder_6_io_B),
    .io_C(fulladder_6_io_C),
    .io_Sum(fulladder_6_io_Sum),
    .io_Carry(fulladder_6_io_Carry)
  );
  fulladder fulladder_7 ( // @[multpipe.scala 15:33]
    .io_A(fulladder_7_io_A),
    .io_B(fulladder_7_io_B),
    .io_C(fulladder_7_io_C),
    .io_Sum(fulladder_7_io_Sum),
    .io_Carry(fulladder_7_io_Carry)
  );
  fulladder fulladder_8 ( // @[multpipe.scala 15:33]
    .io_A(fulladder_8_io_A),
    .io_B(fulladder_8_io_B),
    .io_C(fulladder_8_io_C),
    .io_Sum(fulladder_8_io_Sum),
    .io_Carry(fulladder_8_io_Carry)
  );
  fulladder fulladder_9 ( // @[multpipe.scala 15:33]
    .io_A(fulladder_9_io_A),
    .io_B(fulladder_9_io_B),
    .io_C(fulladder_9_io_C),
    .io_Sum(fulladder_9_io_Sum),
    .io_Carry(fulladder_9_io_Carry)
  );
  fulladder fulladder_10 ( // @[multpipe.scala 15:33]
    .io_A(fulladder_10_io_A),
    .io_B(fulladder_10_io_B),
    .io_C(fulladder_10_io_C),
    .io_Sum(fulladder_10_io_Sum),
    .io_Carry(fulladder_10_io_Carry)
  );
  fulladder fulladder_11 ( // @[multpipe.scala 15:33]
    .io_A(fulladder_11_io_A),
    .io_B(fulladder_11_io_B),
    .io_C(fulladder_11_io_C),
    .io_Sum(fulladder_11_io_Sum),
    .io_Carry(fulladder_11_io_Carry)
  );
  fulladder fulladder_12 ( // @[multpipe.scala 15:33]
    .io_A(fulladder_12_io_A),
    .io_B(fulladder_12_io_B),
    .io_C(fulladder_12_io_C),
    .io_Sum(fulladder_12_io_Sum),
    .io_Carry(fulladder_12_io_Carry)
  );
  fulladder fulladder_13 ( // @[multpipe.scala 15:33]
    .io_A(fulladder_13_io_A),
    .io_B(fulladder_13_io_B),
    .io_C(fulladder_13_io_C),
    .io_Sum(fulladder_13_io_Sum),
    .io_Carry(fulladder_13_io_Carry)
  );
  assign io_P_0 = teliko1_0; // @[multpipe.scala 96:14]
  assign io_P_1 = teliko1_1; // @[multpipe.scala 88:14]
  assign io_P_2 = teliko1_2; // @[multpipe.scala 81:14]
  assign io_P_3 = teliko1_3; // @[multpipe.scala 75:14]
  assign io_P_4 = teliko1_4; // @[multpipe.scala 70:11]
  assign io_P_5 = teliko1_5; // @[multpipe.scala 66:11]
  assign io_P_6 = teliko1_6; // @[multpipe.scala 63:11]
  assign io_P_7 = fulladder_13_io_Sum; // @[multpipe.scala 192:11]
  assign fulladder_io_A = sarr_0_0[1]; // @[multpipe.scala 111:32]
  assign fulladder_io_B = sarr_1_0[0]; // @[multpipe.scala 112:32]
  assign fulladder_io_C = 1'h0; // @[multpipe.scala 113:19]
  assign fulladder_1_io_A = sarr_0_1[2]; // @[multpipe.scala 117:32]
  assign fulladder_1_io_B = sarr_1_1[1]; // @[multpipe.scala 118:32]
  assign fulladder_1_io_C = c1_var_0; // @[multpipe.scala 119:19]
  assign fulladder_2_io_A = sarr_0_2[3]; // @[multpipe.scala 123:32]
  assign fulladder_2_io_B = sarr_1_2[2]; // @[multpipe.scala 124:32]
  assign fulladder_2_io_C = c1_var_1; // @[multpipe.scala 125:19]
  assign fulladder_3_io_A = 1'h0; // @[multpipe.scala 129:19]
  assign fulladder_3_io_B = sarr_1_3[3]; // @[multpipe.scala 130:32]
  assign fulladder_3_io_C = c1_var_2; // @[multpipe.scala 131:19]
  assign fulladder_4_io_A = sarr_2_0[1]; // @[multpipe.scala 135:32]
  assign fulladder_4_io_B = sarr_3_0[0]; // @[multpipe.scala 136:32]
  assign fulladder_4_io_C = 1'h0; // @[multpipe.scala 137:19]
  assign fulladder_5_io_A = sarr_2_1[2]; // @[multpipe.scala 141:32]
  assign fulladder_5_io_B = sarr_3_1[1]; // @[multpipe.scala 142:32]
  assign fulladder_5_io_C = c2_var_0; // @[multpipe.scala 143:19]
  assign fulladder_6_io_A = sarr_2_2[3]; // @[multpipe.scala 147:32]
  assign fulladder_6_io_B = sarr_3_2[2]; // @[multpipe.scala 148:32]
  assign fulladder_6_io_C = c2_var_1; // @[multpipe.scala 149:19]
  assign fulladder_7_io_A = 1'h0; // @[multpipe.scala 153:19]
  assign fulladder_7_io_B = sarr_3_3[3]; // @[multpipe.scala 154:32]
  assign fulladder_7_io_C = c1_var_2; // @[multpipe.scala 155:19]
  assign fulladder_8_io_A = s1_var2_2; // @[multpipe.scala 159:19]
  assign fulladder_8_io_B = s2_var3_0; // @[multpipe.scala 160:19]
  assign fulladder_8_io_C = 1'h0; // @[multpipe.scala 161:19]
  assign fulladder_9_io_A = s1_var2_3; // @[multpipe.scala 165:19]
  assign fulladder_9_io_B = s2_var4_1; // @[multpipe.scala 166:19]
  assign fulladder_9_io_C = c_var_0; // @[multpipe.scala 167:19]
  assign fulladder_10_io_A = s1_var2_4; // @[multpipe.scala 171:20]
  assign fulladder_10_io_B = s2_var4_2; // @[multpipe.scala 172:20]
  assign fulladder_10_io_C = 1'h0; // @[multpipe.scala 173:20]
  assign fulladder_11_io_A = s1_var3_5; // @[multpipe.scala 177:20]
  assign fulladder_11_io_B = s2_var4_3; // @[multpipe.scala 178:20]
  assign fulladder_11_io_C = c_var_2; // @[multpipe.scala 179:20]
  assign fulladder_12_io_A = 1'h0; // @[multpipe.scala 183:20]
  assign fulladder_12_io_B = s2_var4_4; // @[multpipe.scala 184:20]
  assign fulladder_12_io_C = c_var_3; // @[multpipe.scala 185:20]
  assign fulladder_13_io_A = 1'h0; // @[multpipe.scala 189:20]
  assign fulladder_13_io_B = s2_var5_5; // @[multpipe.scala 190:20]
  assign fulladder_13_io_C = c_var_4; // @[multpipe.scala 191:20]
  always @(posedge clock) begin
    if (reset) begin // @[multpipe.scala 18:21]
      sarr_0_0 <= 4'h0; // @[multpipe.scala 18:21]
    end else if (~io_B[0]) begin // @[multpipe.scala 99:26]
      sarr_0_0 <= 4'h0; // @[multpipe.scala 100:18]
    end else begin
      sarr_0_0 <= io_A; // @[multpipe.scala 102:18]
    end
    if (reset) begin // @[multpipe.scala 18:21]
      sarr_0_1 <= 4'h0; // @[multpipe.scala 18:21]
    end else begin
      sarr_0_1 <= sarr_0_0; // @[multpipe.scala 105:18]
    end
    if (reset) begin // @[multpipe.scala 18:21]
      sarr_0_2 <= 4'h0; // @[multpipe.scala 18:21]
    end else begin
      sarr_0_2 <= sarr_0_1; // @[multpipe.scala 105:18]
    end
    if (reset) begin // @[multpipe.scala 18:21]
      sarr_1_0 <= 4'h0; // @[multpipe.scala 18:21]
    end else if (~io_B[1]) begin // @[multpipe.scala 99:26]
      sarr_1_0 <= 4'h0; // @[multpipe.scala 100:18]
    end else begin
      sarr_1_0 <= io_A; // @[multpipe.scala 102:18]
    end
    if (reset) begin // @[multpipe.scala 18:21]
      sarr_1_1 <= 4'h0; // @[multpipe.scala 18:21]
    end else begin
      sarr_1_1 <= sarr_1_0; // @[multpipe.scala 105:18]
    end
    if (reset) begin // @[multpipe.scala 18:21]
      sarr_1_2 <= 4'h0; // @[multpipe.scala 18:21]
    end else begin
      sarr_1_2 <= sarr_1_1; // @[multpipe.scala 105:18]
    end
    if (reset) begin // @[multpipe.scala 18:21]
      sarr_1_3 <= 4'h0; // @[multpipe.scala 18:21]
    end else begin
      sarr_1_3 <= sarr_1_2; // @[multpipe.scala 105:18]
    end
    if (reset) begin // @[multpipe.scala 18:21]
      sarr_2_0 <= 4'h0; // @[multpipe.scala 18:21]
    end else if (~io_B[2]) begin // @[multpipe.scala 99:26]
      sarr_2_0 <= 4'h0; // @[multpipe.scala 100:18]
    end else begin
      sarr_2_0 <= io_A; // @[multpipe.scala 102:18]
    end
    if (reset) begin // @[multpipe.scala 18:21]
      sarr_2_1 <= 4'h0; // @[multpipe.scala 18:21]
    end else begin
      sarr_2_1 <= sarr_2_0; // @[multpipe.scala 105:18]
    end
    if (reset) begin // @[multpipe.scala 18:21]
      sarr_2_2 <= 4'h0; // @[multpipe.scala 18:21]
    end else begin
      sarr_2_2 <= sarr_2_1; // @[multpipe.scala 105:18]
    end
    if (reset) begin // @[multpipe.scala 18:21]
      sarr_3_0 <= 4'h0; // @[multpipe.scala 18:21]
    end else if (~io_B[3]) begin // @[multpipe.scala 99:26]
      sarr_3_0 <= 4'h0; // @[multpipe.scala 100:18]
    end else begin
      sarr_3_0 <= io_A; // @[multpipe.scala 102:18]
    end
    if (reset) begin // @[multpipe.scala 18:21]
      sarr_3_1 <= 4'h0; // @[multpipe.scala 18:21]
    end else begin
      sarr_3_1 <= sarr_3_0; // @[multpipe.scala 105:18]
    end
    if (reset) begin // @[multpipe.scala 18:21]
      sarr_3_2 <= 4'h0; // @[multpipe.scala 18:21]
    end else begin
      sarr_3_2 <= sarr_3_1; // @[multpipe.scala 105:18]
    end
    if (reset) begin // @[multpipe.scala 18:21]
      sarr_3_3 <= 4'h0; // @[multpipe.scala 18:21]
    end else begin
      sarr_3_3 <= sarr_3_2; // @[multpipe.scala 105:18]
    end
    if (reset) begin // @[multpipe.scala 19:23]
      c1_var_0 <= 1'h0; // @[multpipe.scala 19:23]
    end else begin
      c1_var_0 <= c1_temp_0; // @[multpipe.scala 27:10]
    end
    if (reset) begin // @[multpipe.scala 19:23]
      c1_var_1 <= 1'h0; // @[multpipe.scala 19:23]
    end else begin
      c1_var_1 <= c1_temp_1; // @[multpipe.scala 27:10]
    end
    if (reset) begin // @[multpipe.scala 19:23]
      c1_var_2 <= 1'h0; // @[multpipe.scala 19:23]
    end else begin
      c1_var_2 <= c1_temp_2; // @[multpipe.scala 27:10]
    end
    if (reset) begin // @[multpipe.scala 21:23]
      c2_var_0 <= 1'h0; // @[multpipe.scala 21:23]
    end else begin
      c2_var_0 <= c2_temp_0; // @[multpipe.scala 28:10]
    end
    if (reset) begin // @[multpipe.scala 21:23]
      c2_var_1 <= 1'h0; // @[multpipe.scala 21:23]
    end else begin
      c2_var_1 <= c2_temp_1; // @[multpipe.scala 28:10]
    end
    if (reset) begin // @[multpipe.scala 23:22]
      c_var_0 <= 1'h0; // @[multpipe.scala 23:22]
    end else begin
      c_var_0 <= c_temp_0; // @[multpipe.scala 29:10]
    end
    if (reset) begin // @[multpipe.scala 23:22]
      c_var_2 <= 1'h0; // @[multpipe.scala 23:22]
    end else begin
      c_var_2 <= c_temp_2; // @[multpipe.scala 29:10]
    end
    if (reset) begin // @[multpipe.scala 23:22]
      c_var_3 <= 1'h0; // @[multpipe.scala 23:22]
    end else begin
      c_var_3 <= c_temp_3; // @[multpipe.scala 29:10]
    end
    if (reset) begin // @[multpipe.scala 23:22]
      c_var_4 <= 1'h0; // @[multpipe.scala 23:22]
    end else begin
      c_var_4 <= c_temp_4; // @[multpipe.scala 29:10]
    end
    if (reset) begin // @[multpipe.scala 33:24]
      s1_var0_0 <= 1'h0; // @[multpipe.scala 33:24]
    end else begin
      s1_var0_0 <= s1_temp_0; // @[multpipe.scala 37:11]
    end
    if (reset) begin // @[multpipe.scala 33:24]
      s1_var0_1 <= 1'h0; // @[multpipe.scala 33:24]
    end else begin
      s1_var0_1 <= s1_temp_1; // @[multpipe.scala 37:11]
    end
    if (reset) begin // @[multpipe.scala 33:24]
      s1_var0_2 <= 1'h0; // @[multpipe.scala 33:24]
    end else begin
      s1_var0_2 <= s1_temp_2; // @[multpipe.scala 37:11]
    end
    if (reset) begin // @[multpipe.scala 33:24]
      s1_var0_3 <= 1'h0; // @[multpipe.scala 33:24]
    end else begin
      s1_var0_3 <= s1_temp_3; // @[multpipe.scala 37:11]
    end
    if (reset) begin // @[multpipe.scala 33:24]
      s1_var0_4 <= 1'h0; // @[multpipe.scala 33:24]
    end else begin
      s1_var0_4 <= s1_temp_4; // @[multpipe.scala 37:11]
    end
    if (reset) begin // @[multpipe.scala 33:24]
      s1_var0_5 <= 1'h0; // @[multpipe.scala 33:24]
    end else begin
      s1_var0_5 <= s1_temp_5; // @[multpipe.scala 37:11]
    end
    if (reset) begin // @[multpipe.scala 34:24]
      s1_var1_0 <= 1'h0; // @[multpipe.scala 34:24]
    end else begin
      s1_var1_0 <= s1_var0_0; // @[multpipe.scala 38:11]
    end
    if (reset) begin // @[multpipe.scala 34:24]
      s1_var1_1 <= 1'h0; // @[multpipe.scala 34:24]
    end else begin
      s1_var1_1 <= s1_var0_1; // @[multpipe.scala 38:11]
    end
    if (reset) begin // @[multpipe.scala 34:24]
      s1_var1_2 <= 1'h0; // @[multpipe.scala 34:24]
    end else begin
      s1_var1_2 <= s1_var0_2; // @[multpipe.scala 38:11]
    end
    if (reset) begin // @[multpipe.scala 34:24]
      s1_var1_3 <= 1'h0; // @[multpipe.scala 34:24]
    end else begin
      s1_var1_3 <= s1_var0_3; // @[multpipe.scala 38:11]
    end
    if (reset) begin // @[multpipe.scala 34:24]
      s1_var1_4 <= 1'h0; // @[multpipe.scala 34:24]
    end else begin
      s1_var1_4 <= s1_var0_4; // @[multpipe.scala 38:11]
    end
    if (reset) begin // @[multpipe.scala 34:24]
      s1_var1_5 <= 1'h0; // @[multpipe.scala 34:24]
    end else begin
      s1_var1_5 <= s1_var0_5; // @[multpipe.scala 38:11]
    end
    if (reset) begin // @[multpipe.scala 35:24]
      s1_var2_0 <= 1'h0; // @[multpipe.scala 35:24]
    end else begin
      s1_var2_0 <= s1_var1_0; // @[multpipe.scala 39:11]
    end
    if (reset) begin // @[multpipe.scala 35:24]
      s1_var2_1 <= 1'h0; // @[multpipe.scala 35:24]
    end else begin
      s1_var2_1 <= s1_var1_1; // @[multpipe.scala 39:11]
    end
    if (reset) begin // @[multpipe.scala 35:24]
      s1_var2_2 <= 1'h0; // @[multpipe.scala 35:24]
    end else begin
      s1_var2_2 <= s1_var1_2; // @[multpipe.scala 39:11]
    end
    if (reset) begin // @[multpipe.scala 35:24]
      s1_var2_3 <= 1'h0; // @[multpipe.scala 35:24]
    end else begin
      s1_var2_3 <= s1_var1_3; // @[multpipe.scala 39:11]
    end
    if (reset) begin // @[multpipe.scala 35:24]
      s1_var2_4 <= 1'h0; // @[multpipe.scala 35:24]
    end else begin
      s1_var2_4 <= s1_var1_4; // @[multpipe.scala 39:11]
    end
    if (reset) begin // @[multpipe.scala 35:24]
      s1_var2_5 <= 1'h0; // @[multpipe.scala 35:24]
    end else begin
      s1_var2_5 <= s1_var1_5; // @[multpipe.scala 39:11]
    end
    if (reset) begin // @[multpipe.scala 36:24]
      s1_var3_5 <= 1'h0; // @[multpipe.scala 36:24]
    end else begin
      s1_var3_5 <= s1_var2_5; // @[multpipe.scala 40:11]
    end
    if (reset) begin // @[multpipe.scala 43:24]
      s2_var0_0 <= 1'h0; // @[multpipe.scala 43:24]
    end else begin
      s2_var0_0 <= s2_temp_0; // @[multpipe.scala 49:11]
    end
    if (reset) begin // @[multpipe.scala 43:24]
      s2_var0_1 <= 1'h0; // @[multpipe.scala 43:24]
    end else begin
      s2_var0_1 <= s2_temp_1; // @[multpipe.scala 49:11]
    end
    if (reset) begin // @[multpipe.scala 43:24]
      s2_var0_2 <= 1'h0; // @[multpipe.scala 43:24]
    end else begin
      s2_var0_2 <= s2_temp_2; // @[multpipe.scala 49:11]
    end
    if (reset) begin // @[multpipe.scala 43:24]
      s2_var0_3 <= 1'h0; // @[multpipe.scala 43:24]
    end else begin
      s2_var0_3 <= s2_temp_3; // @[multpipe.scala 49:11]
    end
    if (reset) begin // @[multpipe.scala 43:24]
      s2_var0_4 <= 1'h0; // @[multpipe.scala 43:24]
    end else begin
      s2_var0_4 <= s2_temp_4; // @[multpipe.scala 49:11]
    end
    if (reset) begin // @[multpipe.scala 43:24]
      s2_var0_5 <= 1'h0; // @[multpipe.scala 43:24]
    end else begin
      s2_var0_5 <= s2_temp_5; // @[multpipe.scala 49:11]
    end
    if (reset) begin // @[multpipe.scala 44:24]
      s2_var1_0 <= 1'h0; // @[multpipe.scala 44:24]
    end else begin
      s2_var1_0 <= s2_var0_0; // @[multpipe.scala 50:11]
    end
    if (reset) begin // @[multpipe.scala 44:24]
      s2_var1_1 <= 1'h0; // @[multpipe.scala 44:24]
    end else begin
      s2_var1_1 <= s2_var0_1; // @[multpipe.scala 50:11]
    end
    if (reset) begin // @[multpipe.scala 44:24]
      s2_var1_2 <= 1'h0; // @[multpipe.scala 44:24]
    end else begin
      s2_var1_2 <= s2_var0_2; // @[multpipe.scala 50:11]
    end
    if (reset) begin // @[multpipe.scala 44:24]
      s2_var1_3 <= 1'h0; // @[multpipe.scala 44:24]
    end else begin
      s2_var1_3 <= s2_var0_3; // @[multpipe.scala 50:11]
    end
    if (reset) begin // @[multpipe.scala 44:24]
      s2_var1_4 <= 1'h0; // @[multpipe.scala 44:24]
    end else begin
      s2_var1_4 <= s2_var0_4; // @[multpipe.scala 50:11]
    end
    if (reset) begin // @[multpipe.scala 44:24]
      s2_var1_5 <= 1'h0; // @[multpipe.scala 44:24]
    end else begin
      s2_var1_5 <= s2_var0_5; // @[multpipe.scala 50:11]
    end
    if (reset) begin // @[multpipe.scala 45:24]
      s2_var2_0 <= 1'h0; // @[multpipe.scala 45:24]
    end else begin
      s2_var2_0 <= s2_var1_0; // @[multpipe.scala 51:11]
    end
    if (reset) begin // @[multpipe.scala 45:24]
      s2_var2_1 <= 1'h0; // @[multpipe.scala 45:24]
    end else begin
      s2_var2_1 <= s2_var1_1; // @[multpipe.scala 51:11]
    end
    if (reset) begin // @[multpipe.scala 45:24]
      s2_var2_2 <= 1'h0; // @[multpipe.scala 45:24]
    end else begin
      s2_var2_2 <= s2_var1_2; // @[multpipe.scala 51:11]
    end
    if (reset) begin // @[multpipe.scala 45:24]
      s2_var2_3 <= 1'h0; // @[multpipe.scala 45:24]
    end else begin
      s2_var2_3 <= s2_var1_3; // @[multpipe.scala 51:11]
    end
    if (reset) begin // @[multpipe.scala 45:24]
      s2_var2_4 <= 1'h0; // @[multpipe.scala 45:24]
    end else begin
      s2_var2_4 <= s2_var1_4; // @[multpipe.scala 51:11]
    end
    if (reset) begin // @[multpipe.scala 45:24]
      s2_var2_5 <= 1'h0; // @[multpipe.scala 45:24]
    end else begin
      s2_var2_5 <= s2_var1_5; // @[multpipe.scala 51:11]
    end
    if (reset) begin // @[multpipe.scala 46:24]
      s2_var3_0 <= 1'h0; // @[multpipe.scala 46:24]
    end else begin
      s2_var3_0 <= s2_var2_0; // @[multpipe.scala 52:11]
    end
    if (reset) begin // @[multpipe.scala 46:24]
      s2_var3_1 <= 1'h0; // @[multpipe.scala 46:24]
    end else begin
      s2_var3_1 <= s2_var2_1; // @[multpipe.scala 52:11]
    end
    if (reset) begin // @[multpipe.scala 46:24]
      s2_var3_2 <= 1'h0; // @[multpipe.scala 46:24]
    end else begin
      s2_var3_2 <= s2_var2_2; // @[multpipe.scala 52:11]
    end
    if (reset) begin // @[multpipe.scala 46:24]
      s2_var3_3 <= 1'h0; // @[multpipe.scala 46:24]
    end else begin
      s2_var3_3 <= s2_var2_3; // @[multpipe.scala 52:11]
    end
    if (reset) begin // @[multpipe.scala 46:24]
      s2_var3_4 <= 1'h0; // @[multpipe.scala 46:24]
    end else begin
      s2_var3_4 <= s2_var2_4; // @[multpipe.scala 52:11]
    end
    if (reset) begin // @[multpipe.scala 46:24]
      s2_var3_5 <= 1'h0; // @[multpipe.scala 46:24]
    end else begin
      s2_var3_5 <= s2_var2_5; // @[multpipe.scala 52:11]
    end
    if (reset) begin // @[multpipe.scala 47:24]
      s2_var4_1 <= 1'h0; // @[multpipe.scala 47:24]
    end else begin
      s2_var4_1 <= s2_var3_1; // @[multpipe.scala 53:11]
    end
    if (reset) begin // @[multpipe.scala 47:24]
      s2_var4_2 <= 1'h0; // @[multpipe.scala 47:24]
    end else begin
      s2_var4_2 <= s2_var3_2; // @[multpipe.scala 53:11]
    end
    if (reset) begin // @[multpipe.scala 47:24]
      s2_var4_3 <= 1'h0; // @[multpipe.scala 47:24]
    end else begin
      s2_var4_3 <= s2_var3_3; // @[multpipe.scala 53:11]
    end
    if (reset) begin // @[multpipe.scala 47:24]
      s2_var4_4 <= 1'h0; // @[multpipe.scala 47:24]
    end else begin
      s2_var4_4 <= s2_var3_4; // @[multpipe.scala 53:11]
    end
    if (reset) begin // @[multpipe.scala 47:24]
      s2_var4_5 <= 1'h0; // @[multpipe.scala 47:24]
    end else begin
      s2_var4_5 <= s2_var3_5; // @[multpipe.scala 53:11]
    end
    if (reset) begin // @[multpipe.scala 48:24]
      s2_var5_5 <= 1'h0; // @[multpipe.scala 48:24]
    end else begin
      s2_var5_5 <= s2_var4_5; // @[multpipe.scala 54:11]
    end
    if (reset) begin // @[multpipe.scala 56:24]
      teliko1_0 <= 1'h0; // @[multpipe.scala 56:24]
    end else begin
      teliko1_0 <= teliko2_0; // @[multpipe.scala 95:14]
    end
    if (reset) begin // @[multpipe.scala 56:24]
      teliko1_1 <= 1'h0; // @[multpipe.scala 56:24]
    end else begin
      teliko1_1 <= teliko2_1; // @[multpipe.scala 87:14]
    end
    if (reset) begin // @[multpipe.scala 56:24]
      teliko1_2 <= 1'h0; // @[multpipe.scala 56:24]
    end else begin
      teliko1_2 <= teliko2_2; // @[multpipe.scala 80:14]
    end
    if (reset) begin // @[multpipe.scala 56:24]
      teliko1_3 <= 1'h0; // @[multpipe.scala 56:24]
    end else begin
      teliko1_3 <= teliko2_3; // @[multpipe.scala 74:14]
    end
    if (reset) begin // @[multpipe.scala 56:24]
      teliko1_4 <= 1'h0; // @[multpipe.scala 56:24]
    end else begin
      teliko1_4 <= teliko2_4; // @[multpipe.scala 69:14]
    end
    if (reset) begin // @[multpipe.scala 56:24]
      teliko1_5 <= 1'h0; // @[multpipe.scala 56:24]
    end else begin
      teliko1_5 <= teliko2_5; // @[multpipe.scala 65:14]
    end
    if (reset) begin // @[multpipe.scala 56:24]
      teliko1_6 <= 1'h0; // @[multpipe.scala 56:24]
    end else begin
      teliko1_6 <= fulladder_12_io_Sum; // @[multpipe.scala 186:14]
    end
    if (reset) begin // @[multpipe.scala 57:24]
      teliko2_0 <= 1'h0; // @[multpipe.scala 57:24]
    end else begin
      teliko2_0 <= teliko3_0; // @[multpipe.scala 94:14]
    end
    if (reset) begin // @[multpipe.scala 57:24]
      teliko2_1 <= 1'h0; // @[multpipe.scala 57:24]
    end else begin
      teliko2_1 <= teliko3_1; // @[multpipe.scala 86:14]
    end
    if (reset) begin // @[multpipe.scala 57:24]
      teliko2_2 <= 1'h0; // @[multpipe.scala 57:24]
    end else begin
      teliko2_2 <= teliko3_2; // @[multpipe.scala 79:14]
    end
    if (reset) begin // @[multpipe.scala 57:24]
      teliko2_3 <= 1'h0; // @[multpipe.scala 57:24]
    end else begin
      teliko2_3 <= teliko3_3; // @[multpipe.scala 73:14]
    end
    if (reset) begin // @[multpipe.scala 57:24]
      teliko2_4 <= 1'h0; // @[multpipe.scala 57:24]
    end else begin
      teliko2_4 <= teliko3_4; // @[multpipe.scala 68:14]
    end
    if (reset) begin // @[multpipe.scala 57:24]
      teliko2_5 <= 1'h0; // @[multpipe.scala 57:24]
    end else begin
      teliko2_5 <= fulladder_11_io_Sum; // @[multpipe.scala 180:14]
    end
    if (reset) begin // @[multpipe.scala 58:24]
      teliko3_0 <= 1'h0; // @[multpipe.scala 58:24]
    end else begin
      teliko3_0 <= teliko4_0; // @[multpipe.scala 93:14]
    end
    if (reset) begin // @[multpipe.scala 58:24]
      teliko3_1 <= 1'h0; // @[multpipe.scala 58:24]
    end else begin
      teliko3_1 <= teliko4_1; // @[multpipe.scala 85:14]
    end
    if (reset) begin // @[multpipe.scala 58:24]
      teliko3_2 <= 1'h0; // @[multpipe.scala 58:24]
    end else begin
      teliko3_2 <= teliko4_2; // @[multpipe.scala 78:14]
    end
    if (reset) begin // @[multpipe.scala 58:24]
      teliko3_3 <= 1'h0; // @[multpipe.scala 58:24]
    end else begin
      teliko3_3 <= teliko4_3; // @[multpipe.scala 72:14]
    end
    if (reset) begin // @[multpipe.scala 58:24]
      teliko3_4 <= 1'h0; // @[multpipe.scala 58:24]
    end else begin
      teliko3_4 <= fulladder_10_io_Sum; // @[multpipe.scala 174:14]
    end
    if (reset) begin // @[multpipe.scala 59:24]
      teliko4_0 <= 1'h0; // @[multpipe.scala 59:24]
    end else begin
      teliko4_0 <= teliko5_0; // @[multpipe.scala 92:14]
    end
    if (reset) begin // @[multpipe.scala 59:24]
      teliko4_1 <= 1'h0; // @[multpipe.scala 59:24]
    end else begin
      teliko4_1 <= teliko5_1; // @[multpipe.scala 84:14]
    end
    if (reset) begin // @[multpipe.scala 59:24]
      teliko4_2 <= 1'h0; // @[multpipe.scala 59:24]
    end else begin
      teliko4_2 <= teliko5_2; // @[multpipe.scala 77:14]
    end
    if (reset) begin // @[multpipe.scala 59:24]
      teliko4_3 <= 1'h0; // @[multpipe.scala 59:24]
    end else begin
      teliko4_3 <= fulladder_9_io_Sum; // @[multpipe.scala 168:14]
    end
    if (reset) begin // @[multpipe.scala 60:24]
      teliko5_0 <= 1'h0; // @[multpipe.scala 60:24]
    end else begin
      teliko5_0 <= teliko6_0; // @[multpipe.scala 91:14]
    end
    if (reset) begin // @[multpipe.scala 60:24]
      teliko5_1 <= 1'h0; // @[multpipe.scala 60:24]
    end else begin
      teliko5_1 <= s1_var2_1; // @[multpipe.scala 83:14]
    end
    if (reset) begin // @[multpipe.scala 60:24]
      teliko5_2 <= 1'h0; // @[multpipe.scala 60:24]
    end else begin
      teliko5_2 <= fulladder_8_io_Sum; // @[multpipe.scala 162:14]
    end
    if (reset) begin // @[multpipe.scala 61:24]
      teliko6_0 <= 1'h0; // @[multpipe.scala 61:24]
    end else begin
      teliko6_0 <= s1_var2_0; // @[multpipe.scala 90:14]
    end
  end
endmodule
