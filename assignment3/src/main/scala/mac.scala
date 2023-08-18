package mac
import chisel3._
import chisel3.util._
import chisel3.experimental._ 

class io_mac(dataWidth: Int) extends Bundle{
  val mac_init = Input(UInt(1.W))
  val rom_out = Input(UInt(dataWidth.W))
  val ram_out = Input(UInt(dataWidth.W))
  val y = Output(UInt((dataWidth*2+3).W))
  val valid_out = Output(UInt(1.W))
}

class mac(dataWidth: Int) extends Module{
  val io = IO(new io_mac(dataWidth))
  val counter = RegInit(0.U(3.W))

  val yt = RegInit(0.U((dataWidth*2+3).W))
  val valid_outt = RegInit(0.U(1.W))
  io.y := yt
  io.valid_out := valid_outt
  when (io.mac_init === 1.U) {yt := Cat(0.U(3.W),io.rom_out*io.ram_out)}
  .otherwise {yt := yt + io.rom_out*io.ram_out}

  when (io.mac_init === 1.U && counter =/= 6.U) { counter := 0.U; valid_outt := 0.U}
  .elsewhen (io.mac_init === 0.U && counter === 6.U) { counter := 0.U; valid_outt := 1.U}
  .elsewhen (io.mac_init === 1.U && counter === 6.U) { counter := 0.U; valid_outt := 1.U}
  .otherwise { counter := counter + 1.U; valid_outt := 0.U}
}
