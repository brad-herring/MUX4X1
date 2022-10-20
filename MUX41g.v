module MUX41g(Y,I0,I1,I2,I3,S0,S1);
input I0,I1,I2,I3,S0,S1;
output Y;
wire T1,T2,T3,T4,S0bar,S1bar;

not (S0bar, S0);
not (S1bar, S1);
and (T1, I0, S0bar, S1bar);
and (T2, I1, S0, S1bar);
and (T3, I2, S0bar, S1);
and (T4, I3, S0, S1);
or (Y,T1,T2,T3,T4);

endmodule