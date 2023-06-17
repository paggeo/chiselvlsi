package adder
import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import adder._

class bcdserialtester extends AnyFlatSpec with ChiselScalatestTester{
  "Bcdserialtester" should "pass" in {
    test(new bcdserial){ dut =>
      for (a <- 7 to 15){
        for (b <- 0 to 8){
          for (c <- 0 to 1){
            dut.io.A.poke(a.U)
            dut.io.B.poke(b.U)
            dut.io.C.poke(c.U)
            dut.clock.step(1)
            val Sum = dut.io.Sum.peek().litValue
            val Carry = dut.io.Carry.peek().litValue
            println(f"a: ${a.toBinaryString}%4s b: ${b.toBinaryString}%4s  c: $c  Carry: $Carry  Sum: ${Sum.toString(2)}%4s")
          }
        }
        println("=====================================")
      }
    }
  }
}