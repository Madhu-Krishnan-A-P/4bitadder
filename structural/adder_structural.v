`timescale 1ns / 1ps

module adder(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );

wire w1, w2, w3;

xor xor_1(S, A, B, Cin);
and and_1(w1, A, B);
and and_2(w2, A, Cin);
and and_3(w3, B, Cin);
or or_1(Cout, w1, w2, w3);

endmodule

module struct(
    input [3:0]a,
    input [3:0]b,
    input cin,
    output [3:0] sum,
    output cout);

wire c1, c2, c3;

adder a0(a[0], b[0], cin, sum[0], c1);
adder a1(a[1], b[1], c1, sum[1], c2);
adder a2(a[2], b[2], c2, sum[2], c3);
adder a3(a[3], b[3], c3, sum[3], cout);

endmodule
