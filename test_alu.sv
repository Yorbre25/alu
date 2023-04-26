
module test_alu;

	parameter WIDTH = 4;

	logic [WIDTH - 1:0] a;
	logic [WIDTH - 1:0] b;
	logic [3:0] alu_select;
	logic [WIDTH - 1:0] result;
	
	logic [WIDTH:0] r_mov;
	logic [WIDTH:0] r_add;
	logic [WIDTH:0] r_sub;
	logic [WIDTH:0] r_mul;
	logic [WIDTH:0] r_div;
	logic [WIDTH:0] r_xor;
	logic [WIDTH:0] r_and;
	logic [WIDTH:0] r_not;
	logic [WIDTH:0] r_shl;
	logic [WIDTH:0] r_shr;
	
	integer i;
//	ALU #(.N(WIDTH)) alu1(a, b, r_mov, r_compare, r_add, r_sub, r_mul, r_div, r_xor, r_and, r_not, r_shl, r_shr);
	ale #(.N(WIDTH)) ale(a, b, alu_select, result);
	
	initial begin
		a = 4;
		b = 2;
		alu_select = 0;
		
		for (i=0; i<= 10; i=i+1)
			begin
				alu_select = alu_select + 1;
				#10;
			end
		end
endmodule