package adder
import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import adder._

class testregtester extends AnyFlatSpec with ChiselScalatestTester{
  "testreg" should "pass" in {
    test(new testreg){ dut =>
      for (a <- 0 to 1){
        for ( b <- 0 to 1){
          dut.io.A.poke(a.U)
          dut.io.B.poke(b.U)
          for (_ <- 0 to 4-1){
            println(f"testreg")
            dut.clock.step(1)
            val reg = dut.io.sarr2.peek()
            println(s"a: $a, b: $b")
            for (i <-  0 to 4-1){
              for (j <- 0 to 4-1){
                print(f"${reg(i)(j).litValue }")
              }
              println()
            }
          }
        }
      }
    }
  }
}