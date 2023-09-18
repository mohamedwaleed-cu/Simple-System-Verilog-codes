module top;
int x,y;
bit clk;
covergroup group_1 (ref int x,ref int y) @ (negedge clk);
coverpoint x { 	bins bin_1 = {1,2,[19:22]};
		bins bin_2[]={7,10};
		bins bin_3[]={24,32,38,46};
		bins bin_4=default;}


coverpoint y {	//bins bin_1[]={[1:$]};
		bins bin_1 = (2 => 3);
		bins bin_2 = (1,2=>5,4);
		bins bin_3 = (7=>7=>7=>8);}
cross x,y;
endgroup

group_1 g1;

initial
begin
g1=new(x,y);
end

always #2 clk=~clk;
always@(negedge clk)
begin

x=x+y;
y=y+1;

end



endmodule
