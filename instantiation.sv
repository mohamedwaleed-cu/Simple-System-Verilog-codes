module top #(parameter p1=20);

generate
begin:L1
if(p1==10)
mid1 mid1();
else
mid2 mid2();
end
endgenerate

bind mid1 mid2 mid2();
bind mid2 wrapper wrapper();     

endmodule

module mid1;
	genvar i;
	generate
	for(i=0;i<3;i++)
	begin
	bot1 bot1[i]() ;
	end
	endgenerate
endmodule

module mid2;

bot1 bot1[2:0]();

endmodule

module wrapper #(parameter p1=10);
	generate
	case(p1)
	10:bot2 bot2();
	20:bot3 bot3();
	endcase
	endgenerate

endmodule

module bot1;
endmodule
module bot2;
endmodule
module bot3;
endmodule