package pack1;
static int x=10;
static byte y=8'b10110011;
parameter int p1=5;
parameter int p2=6;
endpackage

package pack2;
import pack1::p1;
import pack1::p2;
export pack1::*;
endpackage

package pack3;
import pack2::*;
export pack2::*;
endpackage

module top;
import pack3::*;
initial
begin
$display(pack1::p1);
$display(pack1::p2);
$display(pack1::x);
$display(pack1::y);
end
endmodule