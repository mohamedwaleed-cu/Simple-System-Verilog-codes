/*module top;

bit [32:0] arr1;


initial
begin
arr1=40;
$display("%b",arr1[3:0]);
$display(arr1[9]);
end


endmodule*/


/* module top;
string  arr1 [0:9];
initial
begin
arr1='{0:"mohamed",1:"waleed",2:"abdelhafez",3:"ahmed",4:"siham",5:"yasser",6:"oojj",7:"aw",8:"mohamed",9:"hh"};
//$display("%p",arr1[0:9]);
foreach(arr1[i])
begin
$display("%s",arr1[i]);
end
end
endmodule  */


module top;

typedef struct{
string s;
event e;
real r;
bit [2:0] arr2;}s1;

s1 arr1[];
//int arr1[];

initial
begin

arr1= new[6];

/*arr1='{0:'{s:"waleed",e:null,r:7.7,arr2:3'b101},1:'{s:"mwaleed",e:null,r:17.7,arr2:3'b001},2:'{s:"swaleed",e:null,r:7.07,arr2:3'b111},
3:'{s:"waleed",e:null,r:7.7,arr2:3'b000},4:'{s:"leed",e:null,r:10,arr2:3'b001},5:'{s:"waleed",e:null,r:50,arr2:3'b101}};*/  //ERROR


arr1[0]='{s:"waleed",e:null,r:7.7,arr2:3'b101};
arr1[1]='{s:"mwaleed",e:null,r:17.7,arr2:3'b001};
arr1[2]='{s:"swaleed",e:null,r:7.07,arr2:3'b111};
arr1[3]='{s:"waleed",e:null,r:7.7,arr2:3'b000};
arr1[4]='{s:"leed",e:null,r:10,arr2:3'b001};
arr1[5]='{s:"waleed",e:null,r:50,arr2:3'b101};

$display("%p ",arr1);
$display("%s",arr1[0].s);
$display("%s",arr1[1].s);
$display(arr1[0].r);
$display("%p",arr1[0].arr2);
$display(arr1[0].arr2);


end
endmodule






















