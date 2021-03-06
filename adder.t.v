

// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;

    //behavioralFullAdder adder (sum, carryout, a, b, carryin);
    structuralFullAdder adder (sum, carryout, na, nb, nc, mids0, mids1, mids2, mids3, midc0, midc1,midc2, a, b, carryin);

    initial begin
    $dumpfile("adder.vcd");
    $dumpvars(0,testFullAdder);
       	$display("a b | Cin Cout | sum | Expected Sum | Expected Cout");
    	a=0;b=0;carryin=0; #1000 
		$display("%b %b |  %b    %b  |  %b  |       0      |      0", a, b, carryin, carryout, sum);
		a=0;b=1;carryin=0; #1000 
		$display("%b %b |  %b    %b  |  %b  |       1      |      0", a, b, carryin, carryout, sum);
    	a=1;b=0;carryin=0; #1000 
		$display("%b %b |  %b    %b  |  %b  |       1      |      0", a, b, carryin, carryout, sum);
		a=1;b=1;carryin=0; #1000 
		$display("%b %b |  %b    %b  |  %b  |       0      |      1", a, b, carryin, carryout, sum);

		a=0;b=0;carryin=1; #1000 
		$display("%b %b |  %b    %b  |  %b  |       1      |      0", a, b, carryin, carryout, sum);
		a=0;b=1;carryin=1; #1000 
		$display("%b %b |  %b    %b  |  %b  |       0      |      1", a, b, carryin, carryout, sum);
    	a=1;b=0;carryin=1; #1000 
		$display("%b %b |  %b    %b  |  %b  |       0      |      1", a, b, carryin, carryout, sum);
		a=1;b=1;carryin=1; #1000 
		$display("%b %b |  %b    %b  |  %b  |       1      |      1", a, b, carryin, carryout, sum);
    end
endmodule
