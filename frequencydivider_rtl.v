module frequencydivider_rtl(clk,rst,clk_out);
input clk;
input rst;
output clk_out;
reg n1, n2;
reg [1:0]count;
assign clk_out = n1 | n2;
always@(posedge clk)begin
if(rst) count <= 3'd0;
else if(count == 3'd4) count <= 3'd0;
else count <= count + 1'b1;
end
always@(posedge clk)begin
if(rst) n1 <= 1'b0;
else if(count == 0 || count == 2) n1 <= ~n1;
else n1 <= n1;
end
always@(negedge clk)begin
if(rst) n2 <= 1'b0;
else if(count == 0 || count == 3'd3) n2 <= ~n2;
else n2 <= 1'b0;
end
endmodule