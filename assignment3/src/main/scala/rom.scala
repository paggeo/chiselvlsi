package rom
import chisel3._
import chisel3.util._
import chisel3.experimental._ 

class io_rom(coeffWidth: Int) extends Bundle{
  val en = Input(UInt(1.W))
  val addr = Input(UInt(3.W))
  val rom_out = Output(UInt(coeffWidth.W))
}

class rom(coeffWidth: Int) extends Module{
  val io = IO(new io_rom(coeffWidth))
  val rom = VecInit(Seq(
    "b00001000".asUInt(coeffWidth.W), 
    "b00000111".asUInt(coeffWidth.W),
    "b00000110".asUInt(coeffWidth.W), 
    "b00000101".asUInt(coeffWidth.W), 
    "b00000100".asUInt(coeffWidth.W), 
    "b00000011".asUInt(coeffWidth.W), 
    "b00000010".asUInt(coeffWidth.W),
    "b00000001".asUInt(coeffWidth.W)))

  // val risingEdge = io.clock.asUInt() === 1.U && RegNext(io.clock.asUInt() === 0.U)

  val romt = RegInit(0.U(coeffWidth.W)) // always use this for risingedge(clock)
  io.rom_out := romt

  when(io.en === 1.U) {romt := rom(io.addr)}
  .otherwise {romt:= 0.U}
}
