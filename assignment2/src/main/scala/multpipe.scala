package adder
import chisel3._
import chisel3.util._
import chisel3.experimental._ 
import adder._

class io_multpipe extends Bundle{
  val A = Input(UInt(4.W))
  val B = Input(UInt(4.W))
  val P = Output(UInt(8.W))
}

class multpipe extends Module{
  val io = IO(new io_multpipe)
  val fa = Array.fill(14)(Module(new fulladder))


  val sarr = RegInit(VecInit(Seq.fill(4)(VecInit(Seq.fill(4)(0.U(4.W)))))) // 4x4x4

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

  fa(0).io.A      := sarr(0)(0)(1)
  fa(0).io.B      := sarr(1)(0)(0)
  fa(0).io.C      := 0.U
  fa(0).io.Sum    := 
  fa(0).io.Carry  := 
  
  fa(1).io.A      := sarr(0)(1)(2)
  fa(1).io.B      := sarr(1)(1)(1)
  fa(1).io.C      := 0.U
  fa(1).io.Sum    := 
  fa(1).io.Carry  := 
  
  fa(2).io.A      := sarr(0)(2)(3)
  fa(2).io.B      := sarr(1)(2)(2)
  fa(2).io.C      := 0.U
  fa(2).io.Sum    := 
  fa(2).io.Carry  := 

  fa(3).io.A      := 0.U
  fa(3).io.B      := sarr(1)(3)(3)
  fa(3).io.C      := 0.U
  fa(3).io.Sum    := 
  fa(3).io.Carry  := 
}