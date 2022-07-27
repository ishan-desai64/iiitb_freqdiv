`timescale 1ns/1ps
module fdtb;

reg clk;
reg en;
reg [3:0]n;
wire clkout;

fd f1(en,clk,n,clkout);

initial
begin
clk=0;
en=1;
$dumpfile ("fdvcd.vcd"); 
$dumpvars(0,fdtb);


forever
#10 clk=~clk;

end


initial
begin
n=3;
#300 n=4; 
#300 $finish;

end 
endmodule
