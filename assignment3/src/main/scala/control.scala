package control
import chisel3._
import chisel3.util._
import chisel3.experimental._ 

class io_control extends Bundle{
  val valid_in = Input(UInt(1.W))
  val rom_address = Output(UInt(3.W))
  val ram_address = Output(UInt(3.W))
  val mac_init = Output(UInt(1.W))
  val we = Output(UInt(1.W))
  val en = Output(UInt(1.W))
}

class control extends Module{
  val io = IO(new io_control)
  val counter = RegInit(0.U(3.W))

  val ent = RegInit(0.U(1.W))
  val wet = RegInit(0.U(1.W))
  val mac_initt = RegInit(0.U(1.W))
  val rom_addresst = RegInit(0.U(3.W))
  val ram_addresst = RegInit(0.U(3.W))

  io.en := ent
  io.we := wet
  io.mac_init := mac_initt
  io.rom_address := rom_addresst
  io.ram_address := ram_addresst

  when(counter === 0.U && io.valid_in === 1.U) {
    ent := 1.U
    wet := 1.U
    mac_initt := 1.U
    rom_addresst := counter
    ram_addresst := counter
    counter := counter + 1.U
  }.elsewhen(counter === 0.U && io.valid_in === 0.U) {
    ent := 0.U
    wet := 0.U
    mac_initt := 1.U
  }.elsewhen (counter =/= 0.U){
    ent := 1.U
    wet := 1.U 
    mac_initt := 0.U
    rom_addresst := counter 
    ram_addresst := counter 
    counter := counter + 1.U
  }
}
