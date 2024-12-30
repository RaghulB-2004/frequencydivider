module frequencydivider_tb;
reg clk;
reg rst;
wire clk_out;
frequencydivider_rtl uut (
.clk(clk),
.rst(rst),
.clk_out(clk_out)
);
always #5 clk = ~clk;
initial begin
clk = 0;
rst =0;
rst = 1;
#10;
rst = 0;
#100;
$finish;
end
endmodule