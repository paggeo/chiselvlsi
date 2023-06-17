package dec 
import chisel3._
import chisel3.util._
import chisel3.experimental._
import dec._

class io_dec(val N: Int) extends Bundle{
  val input = Input(Vec(N,UInt(1.W)))
  // val input = Input(UInt(N.W))
  // val output = Output(UInt(math.pow(2,N).toInt.W))
  val output = Output(Vec(math.pow(2, N).toInt, UInt(1.W)))

}

class Dec(val N:Int) extends Module{
  val io = IO(new io_dec(N))
  io.output.foreach(_ := 0.U)
  val input = io.input.asUInt()

  for (i <- 0 until math.pow(2,N).toInt){
    when (input === i.U) {io.output(i) := 1.U}
  }
}