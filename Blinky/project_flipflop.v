module project_flipflop(
   input CLK,
   input SW1,
   output LED1,
);

reg r_LED1;
reg r_SW1;

always @(posedge CLK) 
begin
    r_SW1 <= SW1;
    if (~r_SW1 & SW1)
 begin
    r_LED1 <= ~LED1;
 end
end

assign LED1 = r_LED1;



    
endmodule