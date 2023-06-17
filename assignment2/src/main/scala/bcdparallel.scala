package adder
import chisel3._
import chisel3.util._
import chisel3.experimental._ 
import adder._

class io_bcdparallel extends Bundle{
  val A = Input(UInt(16.W))
  val B = Input(UInt(16.W))
  val C = Input(UInt(1.W))
  val Sum = Output(UInt(16.W))
  val Carry = Output(UInt(1.W))
}

class bcdparallel extends Module{
  val io = IO(new io_bcdparallel)
  val bcd1 = Module(new bcdserial)
  val bcd2 = Module(new bcdserial)
  val bcd3 = Module(new bcdserial)
  val bcd4 = Module(new bcdserial)
  val carry1 = Wire(UInt(1.W))
  val carry2 = Wire(UInt(1.W))
  val carry3 = Wire(UInt(1.W))
  val sum1 = Wire(UInt(4.W))
  val sum2 = Wire(UInt(4.W))
  val sum3 = Wire(UInt(4.W))
  val sum4 = Wire(UInt(4.W))

  bcd1.io.A := io.A(3,0)
  bcd1.io.B := io.B(3,0)
  bcd1.io.C := io.C
  carry1 := bcd1.io.Carry
  sum1 := bcd1.io.Sum
  io.Carry := carry1
  io.Sum := sum1

  bcd2.io.A := io.A(7,4)
  bcd2.io.B := io.B(7,4)
  bcd2.io.C := carry1
  carry2 := bcd2.io.Carry
  sum2 := bcd2.io.Sum


  bcd3.io.A := io.A(11,8)
  bcd3.io.B := io.B(11,8)
  bcd3.io.C := carry2
  carry3 := bcd3.io.Carry
  sum3 := bcd3.io.Sum

  bcd4.io.A := io.A(15,12)
  bcd4.io.B := io.B(15,12)
  bcd4.io.C := carry3
  io.Carry := bcd4.io.Carry
  sum4 := bcd4.io.Sum

  io.Sum := Cat(sum4,sum3,sum2,sum1)
}
