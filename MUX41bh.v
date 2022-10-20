module MUX41bh(Y,I0,I1,I2,I3,S0,S1);
input I0,I1,I2,I3,S0,S1;
output Y;
reg Y;

always @ (I0, I1, I2, I3, S0, S1)
begin
case({S1,S0})
2'b00: Y= I0;
2'b01: Y= I1;
2'b10: Y= I2;
2'b11: Y= I3;
endcase
end
endmodule