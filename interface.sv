class class1;
logic in_data=1;
logic out_data=1;
logic clk;
logic rst;
endclass

interface intf;
logic in_data;
logic out_data;
logic clk;
logic rst;
endinterface

module top(input logic in_data,input logic clk,input logic rst,output logic out_data);


endmodule


module top_tb;


class1 c1;
intf intf1();
top top1(.in_data(intf1.in_data),.clk(intf1.clk),.rst(intf1.rst),.out_data(intf1.out_data));
virtual intf vif;
initial
begin
vif=intf1;
c1=new();
vif.in_data=c1.in_data;
vif.out_data=c1.out_data;
vif.clk=c1.clk;
vif.rst=c1.rst;

$display(c1.out_data);
#1 $display(vif.out_data);
#1 $display(intf1.out_data);
#1 $display(top1.in_data);
end


endmodule
