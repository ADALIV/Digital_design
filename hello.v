module hello;
	initial
		begin
			$display("Hello, World");
			$finish;
		end
endmodule

//cd /Users/adrd1/Documents/notepad
//iverilog -o hello hello.v
//vvp hello