package bar 
import chisel3._
import chisel3.util._
import chisel3.experimental._
import bar._

class io_bar extends Bundle{
  val din = Input(Vec(4,UInt(1.W)))
  val si = Input(UInt(1.W))
  val pl = Input(UInt(1.W))
  val en = Input(UInt(1.W))
  val dir = Input(UInt(1.W))
  val so = Output(UInt(1.W))
}

class Barrel extends Module{
  val io  = IO(new io_bar)
  val reg = RegInit(VecInit(Seq.fill(4)(0.U(1.W))))
  io.so := 0.U
  when(io.pl === 1.U){
    reg := io.din
  }.otherwise{
    when(io.en === 1.U){
      when (io.dir === 0.U){ // right
        for (i <- 1 to 3){
          reg(i-1) := reg(i)
        }
        reg(3) := io.si
        io.so := reg(0)
      }.otherwise{ // left
        for (i <- 0 until 3){
          reg(i+1) := reg(i)
        }
        reg(0) := io.si
        io.so := reg(3)
      }
    } 
  }
}