module led_toggle (
    input wire clk,      
    input wire button,    
    output reg led        
);

    reg button_prev;      

    always @(posedge clk) begin

        if (button && !button_prev)
            led <= ~led;  

        button_prev <= button;  
    end
endmodule
