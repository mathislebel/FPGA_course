module GateProject
 (
  input SW1,  
  input SW2,

  output LED1);
  

  assign LED1 = SW1 & SW2;

endmodule 
