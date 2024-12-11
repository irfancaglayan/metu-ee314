module bcdCounter(
	input clk,
	input reset,
	output reg [3:0] outp
	);

always@(posedge clk, posedge reset) begin
	if (reset) begin 
		outp <= 4'b0000;
	end
	else begin
		case (outp)
			4'b0000: outp <= 4'b0001;
			4'b0001: outp <= 4'b0010;
			4'b0010: outp <= 4'b0011;
			4'b0011: outp <= 4'b0100;
			4'b0100: outp <= 4'b0101;
			4'b0101: outp <= 4'b0110;
			4'b0110: outp <= 4'b0111;
			4'b0111: outp <= 4'b1000;
			4'b1000: outp <= 4'b1001;
			4'b1001: outp <= 4'b0000;
			default: outp <= 4'b0000;
		endcase
	end
end
endmodule
