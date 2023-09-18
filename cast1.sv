module top;
enum integer {a=0,b=5,c=7,d=9} var1;
time t;
int y;
byte x;

initial
begin 

x=8'b00010011;
//x=int'(x);
var1=b;
y=var1.last;
//t=time'(y);
$cast(t,y);

$display("%d",x);

$display(t);
end
endmodule
