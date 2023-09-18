module top;

struct {
string a;
int b;
byte c;
struct packed {bit[5:0] s;} d;
struct {event e1; real r1;} e;
}s1;


initial
begin

s1='{a:"mohamed",b:7,c:126,d:5'b10111,e:{e1:null,r1:80.9}};
$display(s1.a);
$display(s1.b);
$display(s1.c);
$display(s1.d.s);
$display(s1.d);
$display(s1.e.r1);



end
endmodule
