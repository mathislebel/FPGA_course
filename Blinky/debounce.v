module debounce (
    input wire clk,      
    input wire button,    
    output reg debounced  
);

    reg [26:0] count;  
    reg button_sync1, button_sync2;  
    
    always @(posedge clk) begin
        button_sync1 <= button;
        button_sync2 <= button_sync1;
    end

    always @(posedge clk) begin
        if (button_sync2 == debounced) begin
            count <= 0;  
        end else begin
            count <= count + 1;
            if (count == 26'd250000)  
                debounced <= button_sync2;
        end
    end
endmodule
