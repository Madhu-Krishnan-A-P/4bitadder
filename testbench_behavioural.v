module adderbeh_tb;

reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire cout;

adderbehav testbench(a,b,cin,sum,cout);

initial
begin

a = 4'b0100;    b = 4'b1100;    cin = 0;    #50
a = 4'b1010;    b = 4'b1100;    cin = 0;    #50
a = 4'b1111;    b = 4'b1011;    cin = 1;    #50
a = 4'b0110;    b = 4'b1011;    cin = 0;    #50
a = 4'b0110;    b = 4'b1010;    cin = 1;    #50
a = 4'b1100;    b = 4'b0100;    cin = 1;    #50
a = 4'b1100;    b = 4'b1101;    cin = 1;    #50
a = 4'b0000;    b = 4'b1011;    cin = 0;    #50

$finish();
end
endmodule