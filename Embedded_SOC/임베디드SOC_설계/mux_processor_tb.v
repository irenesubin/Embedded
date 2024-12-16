module mux_processor_tb();

reg [1:0]SEL;
reg [2:0] A,B,C,D;
wire [2:0] Y;

  mux_processor mux_processor(SEL, A, B, C, D, Y);

initial begin
	SEL = 2'b00; A = 3'b101; B = 3'b110; C = 3'b010; D = 3'b001;
 	#10
 	SEL = 2'b01; A = 3'b111; B = 3'b010; C = 3'b100; D = 3'b011;
 	#10
 	SEL = 2'b10; A = 3'b110; B = 3'b100; C = 3'b011; D = 3'b001;
 	#10
 	SEL = 2'b11; A = 3'b010; B = 3'b011; C = 3'b001; D = 3'b111;
 	#10

	SEL = 2'b01; A = 3'b001; B = 3'b110; C = 3'b010; D = 3'b001;
 	#10
 	SEL = 2'b10; A = 3'b101; B = 3'b011; C = 3'b000; D = 3'b101;
 	#10
 	SEL = 2'b11; A = 3'b101; B = 3'b100; C = 3'b100; D = 3'b010;
 	#10
 	SEL = 2'b00; A = 3'b100; B = 3'b011; C = 3'b001; D = 3'b111;
 	#10

	SEL = 2'b10; A = 3'b100; B = 3'b001; C = 3'b010; D = 3'b001;
 	#10
 	SEL = 2'b11; A = 3'b001; B = 3'b011; C = 3'b100; D = 3'b011;
 	#10
 	SEL = 2'b00; A = 3'b111; B = 3'b100; C = 3'b011; D = 3'b001;
 	#10
 	SEL = 2'b01; A = 3'b000; B = 3'b010; C = 3'b001; D = 3'b111;
 	#10

	SEL = 2'b11; A = 3'b101; B = 3'b110; C = 3'b010; D = 3'b001;
 	#10
 	SEL = 2'b00; A = 3'b111; B = 3'b010; C = 3'b100; D = 3'b011;
 	#10
 	SEL = 2'b01; A = 3'b110; B = 3'b100; C = 3'b011; D = 3'b001;
 	#10
 	SEL = 2'b10; A = 3'b010; B = 3'b011; C = 3'b001; D = 3'b111;
 	#10
 	
 $stop();
end

endmodule