`timescale 1ns / 1ps

module adder(
    input a,
    input b,
    input cin,
    output reg sum,
    output reg cout
    );
    
    always@*
    begin
    if ({a, b, cin} == 3'b000) begin
    sum = 0;    cout = 0;
    end
    
    else if ({a, b, cin} == 3'b001 || {a, b, cin} == 3'b010 || {a, b, cin} == 3'b100) begin
    sum = 1;    cout = 0;
    end
    
    else if ({a, b, cin} == 3'b011 || {a, b, cin} == 3'b101 || {a, b, cin} == 3'b110 ) begin
    sum = 0;    cout = 1;
    end
    
    else if ({a, b, cin} == 3'b111) begin
    sum = 1;    cout = 1;
    end

    end

endmodule


module adderbehav(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout);

wire c1,c2,c3;

adder a0(A[0],B[0],Cin,Sum[0],c1);
adder a1(A[1],B[1],c1,Sum[1],c2);
adder a2(A[2],B[2],c2,Sum[2],c3);
adder a3(A[3],B[3],c3,Sum[3],Cout);
                
endmodule
