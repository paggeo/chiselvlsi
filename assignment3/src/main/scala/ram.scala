package ram
import chisel3._
import chisel3.util._
import chisel3.experimental._ 

class io_ram(dataWidth: Int) extends Bundle{
  // val reset = Input(UInt(1.W))
  val we = Input(UInt(1.W))
  val en = Input(UInt(1.W))
  val addr = Input(UInt(3.W))
  val di = Input(UInt(dataWidth.W))
  val dio = Output(UInt(dataWidth.W))
}

class ram(dataWidth: Int) extends Module{
  val io = IO(new io_ram(dataWidth))
  val ram = RegInit(VecInit(Seq.fill(8)(0.U(dataWidth.W)))) // Initialize vector with zeros
  val diot = RegInit(0.U(dataWidth.W))

  io.dio := diot
  when(io.en === 1.U) {
    when(io.we === 1.U) {
      for (i <- 0 to 6) ram(i+1) := ram(i)
      ram(0) := io.di; diot := io.di
    }.otherwise {diot := ram(io.addr)}
  }.otherwise {diot := 0.U}
}
