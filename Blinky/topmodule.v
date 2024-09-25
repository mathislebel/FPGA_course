module top_module (
    input wire CLK,      // Horloge du système
    input wire SW1,      // Bouton SW1
    output wire LED1     // LED à toggler
);

    wire debounced_SW1;

    // Instanciation du module debounce pour le bouton SW1
    debounce debounce_inst (
        .clk(CLK),
        .button(SW1),
        .debounced(debounced_SW1)
    );

    // Instanciation du module de toggle de la LED
    led_toggle led_toggle_inst (
        .clk(CLK),
        .button(debounced_SW1),
        .led(LED1)
    );

endmodule
