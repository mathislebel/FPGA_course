//------------------------------------------------------------------
//-- Blinking LED
//------------------------------------------------------------------

module test (
  input CLK,    // 25MHz clock
  output S1_A, S1_B, S1_C, S1_D, S1_E, S1_F, S1_G, S2_A, S2_B, S2_C, S2_D, S2_E, S2_G, S2_F,  //-- The LEDs
  input SW1, SW2, SW3, SW4, // -- The button
);

 reg r_SW1;
 reg r_SW2;
 reg r_S2B;
 reg r_S1B;
 reg r_S2A;
 reg r_S1C;
 reg r_S2D;
 reg r_S2E;
 reg r_S2G;

 always @(posedge CLK) 
 begin
  r_SW1 <= SW1;
    if (~r_SW1 & SW1)
    begin
     r_S1B <= ~S1_B;
     r_S1C <= ~S1_C;
    end 

  r_SW2 <= SW2;
    if (~r_SW2 & SW2)
    begin
     r_S2A  = ~S2_A;
     r_S2B = ~S2_B;
     r_S2G  = ~S2_G;
     r_S2E = ~S2_E;
     r_S2D = ~S2_D;
    end 
 end 

 assign r_S1B = S1_B;
 assign r_S1C = S1_C;
 
 assign r_S2A = S2_A;
 assign r_S2G = S2_G;
 assign r_S2E = S2_E;
 assign r_S2D = S2_D;
 assign r_S2B = S2_B;


  
endmodule


