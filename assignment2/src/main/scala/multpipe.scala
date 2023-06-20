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
  val c1_var = RegInit(VecInit(Seq.fill(3)(0.U(1.W))))
  val c1_temp = (VecInit(Seq.fill(3)(0.U(1.W))))
  val c2_var = RegInit(VecInit(Seq.fill(3)(0.U(1.W))))
  val c2_temp = (VecInit(Seq.fill(3)(0.U(1.W))))
  val c_var = RegInit(VecInit(Seq.fill(5)(0.U(1.W))))
  val c_temp = (VecInit(Seq.fill(5)(0.U(1.W))))

  c1_var := c1_temp
  c2_var := c2_temp
  c_var  := c_temp

  // val s1_var = RegInit(VecInit(Seq.fill(3)(VecInit(Seq.fill(4)(0.U(6.W)))))) // 4x4x4
  val s1_temp = (VecInit(Seq.fill(6)(0.U(1.W))))
  val s1_var0 = RegInit(VecInit(Seq.fill(6)(0.U(1.W))))
  val s1_var1 = RegInit(VecInit(Seq.fill(6)(0.U(1.W))))
  val s1_var2 = RegInit(VecInit(Seq.fill(6)(0.U(1.W))))
  val s1_var3 = RegInit(VecInit(Seq.fill(6)(0.U(1.W))))
  s1_var0 := s1_temp
  s1_var1 := s1_var0
  s1_var2 := s1_var1
  s1_var3 := s1_var2
  
  val s2_temp = (VecInit(Seq.fill(6)(0.U(1.W))))
  val s2_var0 = RegInit(VecInit(Seq.fill(6)(0.U(1.W))))
  val s2_var1 = RegInit(VecInit(Seq.fill(6)(0.U(1.W))))
  val s2_var2 = RegInit(VecInit(Seq.fill(6)(0.U(1.W))))
  val s2_var3 = RegInit(VecInit(Seq.fill(6)(0.U(1.W))))
  s2_var0 := s2_temp
  s2_var1 := s2_var0
  s2_var2 := s2_var1
  s2_var3 := s2_var2


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

  s1_temp(0) := sarr(0)(0)(0)
  s2_temp(0) := sarr(2)(0)(0)
  fa(0).io.A      := sarr(0)(0)(1)
  fa(0).io.B      := sarr(1)(0)(0)
  fa(0).io.C      := 0.U
  fa(0).io.Sum    := s1_temp(1)
  fa(0).io.Carry  := c1_temp(0)
  
  fa(1).io.A      := sarr(0)(1)(2)
  fa(1).io.B      := sarr(1)(1)(1)
  fa(1).io.C      := c1_var(0)
  fa(1).io.Sum    := s1_temp(2)
  fa(1).io.Carry  := c1_temp(1)
  
  fa(2).io.A      := sarr(0)(2)(3)
  fa(2).io.B      := sarr(1)(2)(2)
  fa(2).io.C      := c1_var(1)
  fa(2).io.Sum    := s1_temp(3)
  fa(2).io.Carry  := c1_temp(2)

  fa(3).io.A      := 0.U
  fa(3).io.B      := sarr(1)(3)(3)
  fa(3).io.C      := c1_var(2)
  fa(3).io.Sum    := s1_temp(4)
  fa(3).io.Carry  := s1_temp(5)
}