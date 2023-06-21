package adder
import chisel3._
import chisel3.util._
import chisel3.experimental._ 
import adder._

class io_multpipe extends Bundle{
  val A = Input(UInt(4.W))
  val B = Input(UInt(4.W))
  val P = Output(Vec(8, UInt(1.W)))
}

class multpipe extends Module{
  val io = IO(new io_multpipe)
  val fa = Array.fill(14)(Module(new fulladder))


  // val sarr = RegInit(VecInit(Seq.fill(4)(VecInit(Seq.fill(4)(0.U(4.W)))))) // 4x4x4
  val s0 = RegInit(VecInit(Seq.fill(4)(0.U(4.W))))
  val s1 = RegInit(VecInit(Seq.fill(4)(0.U(4.W))))
  val s2 = RegInit(VecInit(Seq.fill(4)(0.U(4.W))))
  val s3 = RegInit(VecInit(Seq.fill(4)(0.U(4.W))))

  val c1_var = RegInit(VecInit(Seq.fill(3)(0.U(1.W))))
  val c1_temp = (VecInit(Seq.fill(3)(0.U(1.W))))
  val c2_var = RegInit(VecInit(Seq.fill(3)(0.U(1.W))))
  val c2_temp = (VecInit(Seq.fill(3)(0.U(1.W))))
  val c_var = RegInit(VecInit(Seq.fill(5)(0.U(1.W))))
  val c_temp = (VecInit(Seq.fill(5)(0.U(1.W))))
  val carry = (VecInit(Seq.fill(1)(0.U(1.W))))

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
  val s2_var4 = RegInit(VecInit(Seq.fill(6)(0.U(1.W))))
  val s2_var5 = RegInit(VecInit(Seq.fill(6)(0.U(1.W))))
  s2_var0 := s2_temp
  s2_var1 := s2_var0
  s2_var2 := s2_var1
  s2_var3 := s2_var2
  s2_var4 := s2_var3
  s2_var5 := s2_var4

  val teliko1 = RegInit(VecInit(Seq.fill(7)(0.U(1.W))))
  val teliko2 = RegInit(VecInit(Seq.fill(7)(0.U(1.W))))
  val teliko3 = RegInit(VecInit(Seq.fill(7)(0.U(1.W))))
  val teliko4 = RegInit(VecInit(Seq.fill(7)(0.U(1.W))))
  val teliko5 = RegInit(VecInit(Seq.fill(7)(0.U(1.W))))
  val teliko6 = RegInit(VecInit(Seq.fill(7)(0.U(1.W))))

  io.P(6) := teliko1(6)

  teliko1(5) := teliko2(5)
  io.P(5) := teliko1(5)
  
  teliko2(4) := teliko3(4)
  teliko1(4) := teliko2(4)
  io.P(4) := teliko1(4)

  teliko3(3) := teliko4(3)
  teliko2(3) := teliko3(3)
  teliko1(3) := teliko2(3)
  io.P(3)    := teliko1(3)

  teliko4(2) := teliko5(2)
  teliko3(2) := teliko4(2)
  teliko2(2) := teliko3(2)
  teliko1(2) := teliko2(2)
  io.P(2)    := teliko1(2)

  teliko5(1) := s1_var2(1)
  teliko4(1) := teliko5(1)
  teliko3(1) := teliko4(1)
  teliko2(1) := teliko3(1)
  teliko1(1) := teliko2(1)
  io.P(1)    := teliko1(1)

  teliko6(0) := s1_var2(0)
  teliko5(0) := teliko6(0)
  teliko4(0) := teliko5(0)
  teliko3(0) := teliko4(0)
  teliko2(0) := teliko3(0)
  teliko1(0) := teliko2(0)
  io.P(0)    := teliko1(0)

  // for ( i <- 0 until 4){
  //   when(io.B(i) === 0.U){
  //     sarr(i)(0) := 0.U
  //   }.otherwise{
  //     sarr(i)(0) := io.A
  //   }
  //   for (j <- 1 until 4){
  //     sarr(i)(j) := sarr(i)(j-1)
  //   }
  // }

  when(io.B(0) === 0.U){
    s0(0) := 0.U
  }.otherwise{
    s0(0) := io.A
  }
  when(io.B(1) === 0.U){
    s1(0) := 0.U
  }.otherwise{
    s1(0) := io.A
  }
  when(io.B(2) === 0.U){
    s2(0) := 0.U
  }.otherwise{
    s2(2) := io.A
  }
  when(io.B(3) === 0.U){
    s3(0) := 0.U
  }.otherwise{
    s3(0) := io.A
  }

  for (i <- 1 until 4){
    s0(i) := s0(i-1)
    s1(i) := s1(i-1)
    s2(i) := s2(i-1)
    s3(i) := s3(i-1)
  }

  s1_temp(0) := s0(0)
  s2_temp(0) := s2(0)
  fa(0).io.A      := s0(1)(1)
  fa(0).io.B      := s1(0)(0)
  fa(0).io.C      := 0.U
  s1_temp(1) := fa(0).io.Sum
  c1_temp(0) := fa(0).io.Carry
  
  fa(1).io.A      := s0(1)(2)
  fa(1).io.B      := s1(1)(1)
  fa(1).io.C      := c1_var(0)
  s1_temp(2)      := fa(1).io.Sum
  c1_temp(1)      := fa(1).io.Carry
  
  fa(2).io.A      := s0(2)(3)
  fa(2).io.B      := s1(2)(2)
  fa(2).io.C      := c1_var(1)
  s1_temp(3)      := fa(2).io.Sum
  c1_temp(2)      := fa(2).io.Carry

  fa(3).io.A      := 0.U
  fa(3).io.B      := s1(3)(3)
  fa(3).io.C      := c1_var(2)
  s1_temp(4)      := fa(3).io.Sum 
  s1_temp(5)      := fa(3).io.Carry

  fa(4).io.A      := s2(0)(1)
  fa(4).io.B      := s3(0)(0)
  fa(4).io.C      := 0.U
  s2_temp(1)      := fa(4).io.Sum
  c2_temp(0)      := fa(4).io.Carry
  
  fa(5).io.A      := s2(1)(2)
  fa(5).io.B      := s3(1)(1)
  fa(5).io.C      := c2_var(0)
  s2_temp(2)      := fa(5).io.Sum
  c2_temp(1)      := fa(5).io.Carry
  
  fa(6).io.A      := s2(2)(3)
  fa(6).io.B      := s3(2)(2)
  fa(6).io.C      := c2_var(1)
  s2_temp(3)      := fa(6).io.Sum
  c2_temp(2)      := fa(6).io.Carry

  fa(7).io.A      := 0.U
  fa(7).io.B      := s3(3)(3)
  fa(7).io.C      := c1_var(2)
  s2_temp(4) := fa(7).io.Sum  
  s2_temp(5) := fa(7).io.Carry

  fa(8).io.A      := s1_var2(2)
  fa(8).io.B      := s2_var3(0)
  fa(8).io.C      := 0.U
  teliko5(2) := fa(8).io.Sum  
  c_temp(0) :=fa(8).io.Carry  

  fa(9).io.A      := s1_var2(3)
  fa(9).io.B      := s2_var4(1)
  fa(9).io.C      := c_var(0)
  teliko4(3) :=fa(9).io.Sum   
  c_temp(2) :=fa(9).io.Carry  

  fa(10).io.A      := s1_var2(4)
  fa(10).io.B      := s2_var4(2)
  fa(10).io.C      := c_var(1)
  teliko3(4) :=fa(10).io.Sum   
  c_temp(2) :=fa(10).io.Carry  

  fa(11).io.A      := s1_var3(5)
  fa(11).io.B      := s2_var4(3)
  fa(11).io.C      := c_var(2)
  teliko2(5) :=fa(11).io.Sum  
  c_temp(3) :=fa(11).io.Carry 

  fa(12).io.A      := 0.U
  fa(12).io.B      := s2_var4(4)
  fa(12).io.C      := c_var(3)
  teliko1(6) :=fa(12).io.Sum  
  c_temp(4) :=fa(12).io.Carry 

  fa(13).io.A      := 0.U
  fa(13).io.B      := s2_var5(5)
  fa(13).io.C      := c_var(4)
  io.P(7) := fa(13).io.Sum    
  carry(0) :=fa(13).io.Carry 
}