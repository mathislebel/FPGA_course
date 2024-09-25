module CLOCK (
    input wire CLK,      
    output reg S1_A,    
    output reg S1_B,    
    output reg S1_C,    
    output reg S1_D,    
    output reg S1_E,    
    output reg S1_F,    
    output reg S1_G,    
    output reg S2_A,       
    output reg S2_B,       
    output reg S2_C,       
    output reg S2_D,       
    output reg S2_E,       
    output reg S2_F,       
    output reg S2_G,        
    output reg LED1,
    output reg LED2, 
    output reg LED3, 
    output reg LED4,     
);

    reg [3:0] units = 4'b0000;     
    reg [3:0] tens = 4'b0000;      
    reg [36:0] counter = 36'd0;       
    reg [36:0] counter1 = 36'd0 ;    
    reg [36:0] counter2 = 36'd0 ;    
    reg [36:0] counter3 = 36'd0 ;    
    reg [36:0] counter4 = 36'd0 ;    
    parameter MAX_COUNT = 36'd25000000;  
    parameter MAX_COUNTER = 36'd1500000000; 
    parameter MAX_COUNTER2 = 36'd30000000000; 
    parameter MAX_COUNTER3 = 36'd45000000000; 
    parameter MAX_COUNTER4 = 36'd60000000000; 

    always @(posedge CLK) begin
        if (counter == MAX_COUNT) begin
            counter <= 36'd0;
        if (counter1 == MAX_COUNTER)begin
            LED1 = ~LED1;
        end
        if (counter2 == MAX_COUNTER2)begin
            LED2 = ~LED2;
        end
        if (counter3 == MAX_COUNTER3)begin
            LED3 = ~LED3;
        end
        if (counter4 == MAX_COUNTER4)begin
            LED4 = ~LED4;
        end
            if (units == 4'b1001) begin
                units <= 4'b0000;  
                if (tens == 4'b0110) begin
                    tens <= 4'b0000;  
                end else begin
                    tens <= tens + 1;  
                end
            end else begin
                units <= units + 1;  
            end
        end else begin
            counter <= counter + 1;  
            counter1 <= counter1 + 1;
            counter2 <= counter2 + 1;
            counter3 <= counter3 + 1;
            counter4 <= counter4 + 1;
        end
    end

    always @(*) begin
        
        {S1_A, S1_B, S1_C, S1_D, S1_E, S1_F, S1_G} = 7'b1111111;  
        {S2_A, S2_B, S2_C, S2_D, S2_E, S2_F, S2_G} = 7'b1111111;  

        
        case (tens)
            4'b0000: {S1_A, S1_B, S1_C, S1_D, S1_E, S1_F, S1_G} = 7'b0000001;  
            4'b0001: {S1_A, S1_B, S1_C, S1_D, S1_E, S1_F, S1_G} = 7'b1001111;  
            4'b0010: {S1_A, S1_B, S1_C, S1_D, S1_E, S1_F, S1_G} = 7'b0010010;  
            4'b0011: {S1_A, S1_B, S1_C, S1_D, S1_E, S1_F, S1_G} = 7'b0000110;  
            4'b0100: {S1_A, S1_B, S1_C, S1_D, S1_E, S1_F, S1_G} = 7'b1001100;  
            4'b0101: {S1_A, S1_B, S1_C, S1_D, S1_E, S1_F, S1_G} = 7'b0100100;  
            4'b0110: {S1_A, S1_B, S1_C, S1_D, S1_E, S1_F, S1_G} = 7'b0100000;  
            default: {S1_A, S1_B, S1_C, S1_D, S1_E, S1_F, S1_G} = 7'b1111111;  
        endcase

       
        case (units)
            4'b0000: {S2_A, S2_B, S2_C, S2_D, S2_E, S2_F, S2_G} = 7'b0000001;  
            4'b0001: {S2_A, S2_B, S2_C, S2_D, S2_E, S2_F, S2_G} = 7'b1001111;  
            4'b0010: {S2_A, S2_B, S2_C, S2_D, S2_E, S2_F, S2_G} = 7'b0010010;  
            4'b0011: {S2_A, S2_B, S2_C, S2_D, S2_E, S2_F, S2_G} = 7'b0000110;  
            4'b0100: {S2_A, S2_B, S2_C, S2_D, S2_E, S2_F, S2_G} = 7'b1001100;  
            4'b0101: {S2_A, S2_B, S2_C, S2_D, S2_E, S2_F, S2_G} = 7'b0100100;  
            4'b0110: {S2_A, S2_B, S2_C, S2_D, S2_E, S2_F, S2_G} = 7'b0100000;  
            4'b0111: {S2_A, S2_B, S2_C, S2_D, S2_E, S2_F, S2_G} = 7'b0001111;  
            4'b1000: {S2_A, S2_B, S2_C, S2_D, S2_E, S2_F, S2_G} = 7'b0000000;  
            4'b1001: {S2_A, S2_B, S2_C, S2_D, S2_E, S2_F, S2_G} = 7'b0000100;  
            default: {S2_A, S2_B, S2_C, S2_D, S2_E, S2_F, S2_G} = 7'b1111111;  
        endcase
    end
endmodule
