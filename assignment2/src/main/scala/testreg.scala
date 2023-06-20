package adder
import chisel3._
import chisel3.util._
import chisel3.experimental._ 
import adder._

class io_testreg extends Bundle{
  val A = Input(UInt(4.W))
  val B = Input(UInt(4.W))
  val P = Output(UInt(8.W))
  val sarr2 = Output(Vec(4, Vec(4, UInt(8.W))))
}

class testreg extends Module{
  val io = IO(new io_testreg)
  // val fa = Array.fill(14)(Module(new fulladder))
  val sarr = RegInit(VecInit(Seq.fill(4)(VecInit(Seq.fill(4)(0.U(4.W)))))) // 4x4x4
  io.P := 0.U
  for ( i <- 0 until 4){
    when(io.B(i) === 0.U){
      sarr(i)(0) := 0.U
    }.otherwise{
      sarr(i)(0) := io.A
    }
    for (j <- 1 until 4){
      sarr(i)(j) := sarr(i)(j-1)
    }
  }
  io.sarr2 := sarr
}