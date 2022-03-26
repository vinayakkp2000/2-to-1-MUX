module mux2to1_test;
reg in1,in2,sel;
wire out;

mux2to1 MX(.in1(in1),.in2(in2),.sel(sel),.out(out));
clk=1'b1;
always clk=~clk;

initial

begin

in1=2'b00;in2=2'b01;sel=1;
#5 in1=2'b00;in2=2'b01;sel=0;
end
endmodule
