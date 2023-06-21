package adder
import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import adder._

class multpipetester extends AnyFlatSpec with ChiselScalatestTester{
  "Multpipetester" should "pass" in {
    test(new multpipe){ dut =>
      var step = 0;
      for (a <- 3 to 3){
        for (b <- 3 to 3){
            dut.io.A.poke(a.U)
            dut.io.B.poke(b.U)
            dut.clock.step(1)
            val product = dut.io.P.peek().litValue
            println(s"step: $step, a: $a, b: $b, product: $product")
            step = step + 1 
        }
      }
      for (_ <- 0 to 9){
        dut.clock.step(1)
        val product = dut.io.P.peek().litValue
        println(s"step: $step, product: $product")
        step = step + 1 
      }

    }
  }
}