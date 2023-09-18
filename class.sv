/*typedef struct packed { bit [9:0] s;}struct1;
class class1;
static function struct1 f1 (input int a,input byte b);
struct1 s1;
s1.s=a+b;
return s1;
endfunction
endclass


module top;
class1 c1;
struct1 s2;
int a;
byte b;
initial
begin
a=4;
b=5;
c1=new();
s2=c1.f1(a,b);  // class1::f1(a,b)

$display(s2.s);
end
endmodule */
/*
///////////////////automatic method//////////////////////////
typedef struct packed { bit [9:0] s;}struct1;
class class1;
task t1 (input int a,input byte b);
struct1 s1;
s1.s=a+b;
$display(s1.s);
endtask
endclass


module top;
class1 c1;

int a;
byte b;
initial
begin
a=4;
b=5;
c1=new();
c1.t1(a,b);  


end
endmodule
*/



///////////////////////////////inheritance///////////////////////
typedef struct packed { bit [9:0] s;}struct1;
class parent;
static function struct1 f1 (input int a,input byte b);
struct1 s1;
s1.s=a+b;
return s1;
endfunction
struct1 var1=20;
endclass

class child extends parent;
endclass;


module top;
child c1;
struct1 s2;
int a;
byte b;
initial
begin
a=4;
b=5;
c1=new();
$display(c1.var1);
s2=c1.f1(a,b);  // class1::f1(a,b)

$display(s2.s);
end
endmodule