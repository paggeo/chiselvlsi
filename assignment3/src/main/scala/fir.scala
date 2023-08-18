package fir
import chisel3._
import chisel3.util._
import chisel3.experimental._ 
import control._
import mac._
import rom._
import ram._

class io_fir extends Bundle{
  val valid_in = Input(UInt(1.W))
  val x = Input(UInt(8.W))
  val y = Output(UInt(19.W))
  val valid_out = Output(UInt(1.W))
}

class fir extends Module{
  val io = IO(new io_fir)

  val mac = Module(new mac(8))
  val control = Module(new control)
  val ram = Module(new ram(8))
  val rom = Module(new rom(8))

  
  val rom_address_control_unit = Wire(UInt(3.W));
  val ram_address_control_unit= Wire(UInt(3.W));
  val ram_out_ram= Wire(UInt(8.W));
  val rom_out_rom= Wire(UInt(8.W));
  val en_control_unit= Wire(UInt(1.W));
  val we_control_unit= Wire(UInt(1.W));

  val mac_init_control_unit= Reg(UInt(1.W)) //RegInit(0.U(1.W)) // with reset
  val mac_init_mac= Wire(UInt(1.W));

  val xt = RegInit(0.U(8.W))

  mac_init_mac := mac_init_control_unit
  when (true.B){xt := io.x}

 control.io.valid_in <> io.valid_in;control.io.rom_address <> rom_address_control_unit 
 control.io.ram_address <> ram_address_control_unit;
 control.io.mac_init <> mac_init_control_unit;control.io.we <> we_control_unit;control.io.en <> en_control_unit

  rom.io.en <> en_control_unit; rom.io.addr <> rom_address_control_unit; rom.io.rom_out <> rom_out_rom

  ram.io.we <> we_control_unit; ram.io.en <> en_control_unit; ram.io.addr <> ram_address_control_unit; 
  ram.io.di <> xt; ram.io.dio <> ram_out_ram

  mac.io.rom_out <> rom_out_rom; mac.io.ram_out <> ram_out_ram; mac.io.mac_init <> mac_init_mac; 
  mac.io.y <> io.y; mac.io.valid_out <> io.valid_out

}
