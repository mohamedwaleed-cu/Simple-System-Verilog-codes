

/* function string f1 (input int a,input byte b);

int c;
c=a+b;
$display("%d",a);
$display("%d",b);
if(c>10)
return "hello";
else
return "Hi";
endfunction

module top;
initial
begin
string s ;
s = f1(4,5);
$display("%s",s);


end
endmodule   */

task t1 (input int a,input byte b);

int c;
c=a+b;
$display("%d",a);
$display("%d",b);
if(c>10)
$display("hello");
else
$display("Hi");
endtask

module top;
initial
begin
t1(5,10);


end
endmodule
