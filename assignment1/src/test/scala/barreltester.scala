package bar
import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import bar._

class barreltester extends AnyFlatSpec with ChiselScalatestTester{
  "Barreltester" should "pass" in {
    test(new Barrel){ dut =>
      dut.io.en.poke(1.U)
      for (i <- 0 to 1){
        dut.io.dir.poke(i.U)
        /********** Load Vector **************/
        dut.io.pl.poke(1.U)
        val inputValues = 12.U(4.W).asBools() //.reverse
        dut.io.din.zip(inputValues).foreach { case (input, inputValue) =>
          input.poke(inputValue.asUInt())
        }
        val out = dut.io.so.peek().litValue
        println(f"out $out%5d")
        dut.clock.step(1)
        dut.io.pl.poke(0.U)
        for (i<-0 to 5){
        dut.clock.step(1)
        val out = dut.io.so.peek().litValue
        println(f"out $out%5d")
        }        
        /************************/
      }
    }
  }
}