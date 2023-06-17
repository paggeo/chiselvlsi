package dec
import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import dec._

class dectester extends AnyFlatSpec with ChiselScalatestTester{
  "Dec" should "pass" in {
    val N = 4
    test(new Dec(N)){ dut =>
      for (a <- 0 to math.pow(2,N).toInt-1){
        val inputValues = a.U(N.W).asBools() //.reverse
        dut.io.input.zip(inputValues).foreach { case (input, inputValue) =>
          input.poke(inputValue.asUInt())
        }
        dut.clock.step(1)
        println(f"input ${dut.io.input.peek().litValue}%10s -> output ${dut.io.output.peek().litValue.toString(2)}%20s")
      }
    }
  }
}