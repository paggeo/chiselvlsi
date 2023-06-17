package counter
import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import counter._

class countertester extends AnyFlatSpec with ChiselScalatestTester{
  "Counter" should "pass" in {
    val N = 3
    test(new counter(N)){ dut =>
      for (step <- 0 to 10){
        dut.io.en.poke(1.U)
        dut.io.dir.poke(1.U)
        dut.clock.step(1)
        val out = dut.io.dout.peek().litValue
        println(f"step $step%5d, out $out%5d")
      }
      for (step <- 0 to 9){
        dut.io.en.poke(1.U)
        dut.io.dir.poke(0.U)
        dut.clock.step(1)
        val out = dut.io.dout.peek().litValue
        println(f"step ${step+11}%5d, out $out%5d")
      }
      for (step <- 0 to 19){
        dut.io.en.poke(1.U)
        dut.io.dir.poke(1.U)

        dut.io.mod.poke(1.U)
        dut.io.din.poke(6.U)
        dut.clock.step(1)
        val out = dut.io.dout.peek().litValue
        println(f"step ${step+21}%5d, out $out%5d")
      }
    }
  }
}