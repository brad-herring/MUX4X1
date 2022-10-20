module MUX21(Y, I0, I1, S);

output Y;
input I0, I1, S;
wire T1, T2, Sbar;

not (Sbar, S);
and (T1, I1, S);
and (T2, T0, Sbar);
or (Y, T1, T2);

endmodule