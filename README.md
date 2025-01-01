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


#test bench 

module full_adder1( );
reg a,b,cin;
wire s,cout;
full_adder uut (.a(a),.b(b),.cin(cin),.cout(cout),.s(s));
initial
begin
a=0;b=0;cin=0;
#10;
a=0;b=0;cin=1;
#10;
a=0;b=1;cin=0;
#10;
a=0;b=1;cin=1;
#10;
a=1;b=0;cin=0;
#10;
a=1;b=0;cin=1;
#10;
a=1;b=1;cin=0;
#10;
a=1;b=1;cin=1;
#10;
$finish;
end
endmodule
