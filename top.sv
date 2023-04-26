module top #(parameter N = 4)(
	input [N-1:0] a,
	input [N-1:0] b,
	input [3:0] select,
	output [N-1:0] result,
	output [3:0] flags
);
	
	logic [N:0] r_mov, r_compare, r_add, r_sub, r_mul, r_div, r_xor, r_and, r_not, r_shl, r_shr;
	logic [N:0] result_temp;
	
	ALU #(.N(4)) alu1(a, b, r_mov, r_compare, r_add, r_sub, r_mul, r_div, r_xor, r_and, r_not, r_shl, r_shr);
	Mux #(.N(4)) mux1(select, r_mov, r_compare, r_add, r_sub, r_mul, r_div, r_xor, r_and, r_not, r_shl, r_shr, result_temp);
	SetFlags #(.N(4)) set_flags(select, a[N-1], b[N-1], result_temp, flags);
	
	assign result = result_temp;
	

endmodule

