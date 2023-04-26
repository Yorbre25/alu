
module test_calcu;
	parameter WIDTH = 4;

	logic [WIDTH-1:0] a,b,alu_select, result, flags;
	integer i;
	
	
	top #(.N(WIDTH)) calcu(a,b,alu_select,result,flags);
	
	initial begin
		a = 1;
		b = 1;
		alu_select = 0;
		
		for (i=0; i<= 10; i=i+1)
			begin
				alu_select = alu_select + 1;
				#10;
			end
		end
endmodule