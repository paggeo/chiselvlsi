import chisel3._
import scala.io.Source
import java.io._
import dec._
import bar._
import counter._

object Main extends App {
  println("Hello, World! what no")

  val writer = new PrintWriter(new File("dut.v" ))
  writer.write(new (chisel3.stage.ChiselStage).emitVerilog(
      // new shifter,
      // new counter.counter(10),
      // new dec.Dec(3),
      new bar.Barrel,
      Array("--emission-options=disableMemRandomization,disableRegisterRandomization","--target-dir","output/")
    )
  )
  writer.close()
}