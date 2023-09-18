class class1;
rand bit [9:0] var1;
constraint const1 {var1 inside {40,45,7,[10:20]};}
randc time var2;

constraint const2 {var2 dist {10:=0,12:=4,6:=4};}     //10:=0 means that probability of 10 =0
//constraint const3 {unique {var1,var2};}   //randc can't used in unique
constraint const3 { (var2==6) -> (14<var1 && var1<19);}

endclass

module top;
class1 c1;

initial
begin
c1=new;
//c1.var1=3;
//c1.var2=4;
//c1.var2.rand_mode(0);
//c1.const1.constraint_mode(0);
for(int i=0;i<20;i++)
begin
void'(c1.randomize());

$display("var1=%p",c1.var1);

$display("var2=%t",c1.var2);
end

end
endmodule