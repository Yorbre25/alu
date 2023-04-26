module ale #(parameter N = 4)(
  input logic [N-1:0] a,
  input logic [N-1:0] b,
  input logic [3:0] opcode,
  output logic [N-1:0] result
);

  // Internal signals
  logic [N-1:0] temp;
  logic signed [N:0] temp_signed;
  logic [N:0] temp2;

  // Arithmetic operations
  always_comb begin
    case (opcode)
      3'b000: result = a + b;   // Addition
      3'b001: result = a - b;   // Subtraction
      3'b010: result = a & b;   // Bitwise AND
      3'b011: result = a | b;   // Bitwise OR
      3'b100: result = a ^ b;   // Bitwise XOR
      3'b101: result = a << b;  // Shift left
      3'b110: result = a >> b;  // Shift right (logical)
      3'b111: result = $signed(a) >>> b;  // Shift right (arithmetic)
		default: result = 0;
    endcase
  end
 endmodule 