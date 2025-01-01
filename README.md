# full_adder

module full_adder(a,b,cin,s,cout );
input a,b,cin;
output s,cout;
wire s0,s1,s2;
xor l1(s,a,b,cin);
and l2(s0,a,b);
and l3 (s1,a,cin);
and l4(s2,b,cin);
or(cout,s0,s1,s2);

endmodule
