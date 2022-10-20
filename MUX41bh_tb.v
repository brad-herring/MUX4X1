module MUX41bh_tb();
reg I0_in, I1_in, I2_in, I3_in, S0_in, S1_in; 
wire Y_out; 
 
MUX41bh uut(.Y(Y_out), .I0(I0_in), .I1(I1_in), .I2(I2_in), .I3(I3_in), .S0(S0_in), .S1(S1_in)); 
 
initial  
begin 
I0_in=1'b0;
I1_in=1'b0;
I2_in=1'b0;
I3_in=1'b0;
S0_in=1'b0;
S1_in=1'b0;
end
  
always #160 I0_in=~I0_in;
always #80 I1_in=~I1_in;
always #40 I2_in=~I2_in;
always #20 I3_in=~I3_in;
always #10 S1_in=~S1_in;
always #5 S0_in=~S0_in;

always@(I0_in or I1_in or I2_in or I3_in or S0_in or S1_in)  
begin 
$monitor("At time = %t, I0_in = %b, I1_in = %b, I2_in = %b, I3_in = %b, S0_in = %b, S1_in = %b)", 
$time, I0_in, I1_in, I2_in, I3_in, S0_in, S1_in, Y_out); 
end 
endmodule