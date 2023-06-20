module testreg(
  input        clock,
  input        reset,
  input  [3:0] io_A,
  input  [3:0] io_B,
  output [7:0] io_P,
  output [7:0] io_sarr2_0_0,
  output [7:0] io_sarr2_0_1,
  output [7:0] io_sarr2_0_2,
  output [7:0] io_sarr2_0_3,
  output [7:0] io_sarr2_1_0,
  output [7:0] io_sarr2_1_1,
  output [7:0] io_sarr2_1_2,
  output [7:0] io_sarr2_1_3,
  output [7:0] io_sarr2_2_0,
  output [7:0] io_sarr2_2_1,
  output [7:0] io_sarr2_2_2,
  output [7:0] io_sarr2_2_3,
  output [7:0] io_sarr2_3_0,
  output [7:0] io_sarr2_3_1,
  output [7:0] io_sarr2_3_2,
  output [7:0] io_sarr2_3_3
);
  reg [3:0] sarr_0_0; // @[testreg.scala 17:21]
  reg [3:0] sarr_0_1; // @[testreg.scala 17:21]
  reg [3:0] sarr_0_2; // @[testreg.scala 17:21]
  reg [3:0] sarr_0_3; // @[testreg.scala 17:21]
  reg [3:0] sarr_1_0; // @[testreg.scala 17:21]
  reg [3:0] sarr_1_1; // @[testreg.scala 17:21]
  reg [3:0] sarr_1_2; // @[testreg.scala 17:21]
  reg [3:0] sarr_1_3; // @[testreg.scala 17:21]
  reg [3:0] sarr_2_0; // @[testreg.scala 17:21]
  reg [3:0] sarr_2_1; // @[testreg.scala 17:21]
  reg [3:0] sarr_2_2; // @[testreg.scala 17:21]
  reg [3:0] sarr_2_3; // @[testreg.scala 17:21]
  reg [3:0] sarr_3_0; // @[testreg.scala 17:21]
  reg [3:0] sarr_3_1; // @[testreg.scala 17:21]
  reg [3:0] sarr_3_2; // @[testreg.scala 17:21]
  reg [3:0] sarr_3_3; // @[testreg.scala 17:21]
  assign io_P = 8'h0; // @[testreg.scala 18:8]
  assign io_sarr2_0_0 = {{4'd0}, sarr_0_0}; // @[testreg.scala 29:12]
  assign io_sarr2_0_1 = {{4'd0}, sarr_0_1}; // @[testreg.scala 29:12]
  assign io_sarr2_0_2 = {{4'd0}, sarr_0_2}; // @[testreg.scala 29:12]
  assign io_sarr2_0_3 = {{4'd0}, sarr_0_3}; // @[testreg.scala 29:12]
  assign io_sarr2_1_0 = {{4'd0}, sarr_1_0}; // @[testreg.scala 29:12]
  assign io_sarr2_1_1 = {{4'd0}, sarr_1_1}; // @[testreg.scala 29:12]
  assign io_sarr2_1_2 = {{4'd0}, sarr_1_2}; // @[testreg.scala 29:12]
  assign io_sarr2_1_3 = {{4'd0}, sarr_1_3}; // @[testreg.scala 29:12]
  assign io_sarr2_2_0 = {{4'd0}, sarr_2_0}; // @[testreg.scala 29:12]
  assign io_sarr2_2_1 = {{4'd0}, sarr_2_1}; // @[testreg.scala 29:12]
  assign io_sarr2_2_2 = {{4'd0}, sarr_2_2}; // @[testreg.scala 29:12]
  assign io_sarr2_2_3 = {{4'd0}, sarr_2_3}; // @[testreg.scala 29:12]
  assign io_sarr2_3_0 = {{4'd0}, sarr_3_0}; // @[testreg.scala 29:12]
  assign io_sarr2_3_1 = {{4'd0}, sarr_3_1}; // @[testreg.scala 29:12]
  assign io_sarr2_3_2 = {{4'd0}, sarr_3_2}; // @[testreg.scala 29:12]
  assign io_sarr2_3_3 = {{4'd0}, sarr_3_3}; // @[testreg.scala 29:12]
  always @(posedge clock) begin
    if (reset) begin // @[testreg.scala 17:21]
      sarr_0_0 <= 4'h0; // @[testreg.scala 17:21]
    end else if (~io_B[0]) begin // @[testreg.scala 20:26]
      sarr_0_0 <= 4'h0; // @[testreg.scala 21:18]
    end else begin
      sarr_0_0 <= io_A; // @[testreg.scala 23:18]
    end
    if (reset) begin // @[testreg.scala 17:21]
      sarr_0_1 <= 4'h0; // @[testreg.scala 17:21]
    end else begin
      sarr_0_1 <= sarr_0_0; // @[testreg.scala 26:18]
    end
    if (reset) begin // @[testreg.scala 17:21]
      sarr_0_2 <= 4'h0; // @[testreg.scala 17:21]
    end else begin
      sarr_0_2 <= sarr_0_1; // @[testreg.scala 26:18]
    end
    if (reset) begin // @[testreg.scala 17:21]
      sarr_0_3 <= 4'h0; // @[testreg.scala 17:21]
    end else begin
      sarr_0_3 <= sarr_0_2; // @[testreg.scala 26:18]
    end
    if (reset) begin // @[testreg.scala 17:21]
      sarr_1_0 <= 4'h0; // @[testreg.scala 17:21]
    end else if (~io_B[1]) begin // @[testreg.scala 20:26]
      sarr_1_0 <= 4'h0; // @[testreg.scala 21:18]
    end else begin
      sarr_1_0 <= io_A; // @[testreg.scala 23:18]
    end
    if (reset) begin // @[testreg.scala 17:21]
      sarr_1_1 <= 4'h0; // @[testreg.scala 17:21]
    end else begin
      sarr_1_1 <= sarr_1_0; // @[testreg.scala 26:18]
    end
    if (reset) begin // @[testreg.scala 17:21]
      sarr_1_2 <= 4'h0; // @[testreg.scala 17:21]
    end else begin
      sarr_1_2 <= sarr_1_1; // @[testreg.scala 26:18]
    end
    if (reset) begin // @[testreg.scala 17:21]
      sarr_1_3 <= 4'h0; // @[testreg.scala 17:21]
    end else begin
      sarr_1_3 <= sarr_1_2; // @[testreg.scala 26:18]
    end
    if (reset) begin // @[testreg.scala 17:21]
      sarr_2_0 <= 4'h0; // @[testreg.scala 17:21]
    end else if (~io_B[2]) begin // @[testreg.scala 20:26]
      sarr_2_0 <= 4'h0; // @[testreg.scala 21:18]
    end else begin
      sarr_2_0 <= io_A; // @[testreg.scala 23:18]
    end
    if (reset) begin // @[testreg.scala 17:21]
      sarr_2_1 <= 4'h0; // @[testreg.scala 17:21]
    end else begin
      sarr_2_1 <= sarr_2_0; // @[testreg.scala 26:18]
    end
    if (reset) begin // @[testreg.scala 17:21]
      sarr_2_2 <= 4'h0; // @[testreg.scala 17:21]
    end else begin
      sarr_2_2 <= sarr_2_1; // @[testreg.scala 26:18]
    end
    if (reset) begin // @[testreg.scala 17:21]
      sarr_2_3 <= 4'h0; // @[testreg.scala 17:21]
    end else begin
      sarr_2_3 <= sarr_2_2; // @[testreg.scala 26:18]
    end
    if (reset) begin // @[testreg.scala 17:21]
      sarr_3_0 <= 4'h0; // @[testreg.scala 17:21]
    end else if (~io_B[3]) begin // @[testreg.scala 20:26]
      sarr_3_0 <= 4'h0; // @[testreg.scala 21:18]
    end else begin
      sarr_3_0 <= io_A; // @[testreg.scala 23:18]
    end
    if (reset) begin // @[testreg.scala 17:21]
      sarr_3_1 <= 4'h0; // @[testreg.scala 17:21]
    end else begin
      sarr_3_1 <= sarr_3_0; // @[testreg.scala 26:18]
    end
    if (reset) begin // @[testreg.scala 17:21]
      sarr_3_2 <= 4'h0; // @[testreg.scala 17:21]
    end else begin
      sarr_3_2 <= sarr_3_1; // @[testreg.scala 26:18]
    end
    if (reset) begin // @[testreg.scala 17:21]
      sarr_3_3 <= 4'h0; // @[testreg.scala 17:21]
    end else begin
      sarr_3_3 <= sarr_3_2; // @[testreg.scala 26:18]
    end
  end
endmodule
