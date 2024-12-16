module mux_processor(SEL,A,B,C,D,Y);

input [1:0]SEL;
input [2:0] A,B,C,D;
output [2:0] Y;
reg [2:0] Y;

always @(SEL or A or B or C or D)
begin
    if (SEL == 2'b00)
        Y = A;
    else if (SEL == 2'b01)
        Y = B;
    else if (SEL == 2'b10)
        Y = C;
    else
        Y = D;
end

endmodule
