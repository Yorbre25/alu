module Mux #(parameter N = 4)(
	input logic [4:0] select,
	input logic [N:0] r_mov,
	input logic [N:0] r_compare,
	input logic [N:0] r_add,
	input logic [N:0] r_sub,
	input logic [N:0] r_mul,
	input logic [N:0] r_div,
	input logic [N:0] r_xor,
	input logic [N:0] r_and,
	input logic [N:0] r_not,
	input logic [N:0] r_shl,
	input logic [N:0] r_shr,
	output logic [N:0] result
);

	logic [N:0] result_temp;

	 always_comb
			begin
				case(select)
					0: result_temp = r_mov;
					1: result_temp = r_compare; 
					2: result_temp = r_add; 
					3: result_temp = r_sub;
					4: result_temp = r_mul;
					5: result_temp = r_div;
					6: result_temp = r_xor;
					7: result_temp = r_and;
					8: result_temp = r_not;
					9: result_temp = r_shl;
					10: result_temp = r_shr;
					default: result_temp = 0;
				endcase
			end
			
	assign result = result_temp;
endmodule 