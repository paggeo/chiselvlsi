package counter
import chisel3._
import chisel3.util._
import chisel3.experimental._ 
import counter._

class io_counter(size: Int) extends Bundle{
  val din   = Input(UInt(size.W))
  val en    = Input(UInt(1.W))
  val mod   = Input(UInt(1.W))
  val dir   = Input(UInt(1.W))
  val dout  = Output(UInt(size.W))
}

class counter(size: Int) extends Module{
  val io = IO(new io_counter(size))
  val count = RegInit(0.U(size.W))
  when(io.en === 1.U){
    when(io.dir === 1.U){
      when(io.mod === 1.U){
        when (count =/= io.din){
          count := count + 1.U
        }.otherwise{
          count := 0.U
        }
      }.otherwise{
        count := count + 1.U
      }
    }.otherwise{
      count := count - 1.U
    }
  }
  io.dout := count
}