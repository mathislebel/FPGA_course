module LedBlinker
(
 input wire CLK,
 output reg LED1,
 output reg LED2,
 output reg LED3,
 output reg LED4,
);

 reg [23:0] count = 0;

 always @(posedge CLK)
 begin
   if (count == 23'd2000000)
   begin
     LED1 = ~LED1;
   end
   if (count == 23'd8000000)
   begin
     LED2 = ~LED2;
   end
   if (count == 23'd2000000)
   begin
     LED3 = ~LED3;
   end
   if (count == 23'd8000000)
   begin
     LED4 = ~LED4;
   end
   count <= count + 1;
 end
endmodule