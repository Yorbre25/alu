module ALU #(parameter N = 4)(
	input logic [N - 1:0] a,
	input logic [N - 1:0] b,
	output logic [N:0] r_mov,
	output logic [N:0] r_compare,
	output logic [N:0] r_add,
	output logic [N:0] r_sub,
	output logic [N:0] r_mul,
	output logic [N:0] r_div,
	output logic [N:0] r_xor,
	output logic [N:0] r_and,
	output logic [N:0] r_not,
	output logic [N:0] r_shl,
	output logic [N:0] r_shr
);

//	logic r_mov_temp;
//	logic r_compare_temp;
//	logic r_add_temp;
//	logic r_sub_temp;
//	logic r_mul_temp;
//	logic r_div_temp;
//	logic r_xor_temp;
//	logic r_and_temp;
//	logic r_not_temp;
//	logic r_shl_temp;
//	logic r_shr_temp;
	

	assign r_mov = a;
	assign r_add = a + b;
	assign r_sub = a - b;
	assign r_mul= a * b;
	assign r_div = a / b;
	assign r_xor = a ^ b;
	assign r_and = a & b;
	assign r_not = !a;
	assign r_shl = a << b;
	assign r_shr = a >> b;
	


endmodule

	