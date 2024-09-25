module program (
    input SW1,
    input SW2,
    output LED1,
);

    this_module MODULE1 (
        .i_1(SW1),
        .i_2(SW2),
        .o_1(LED1),
    );

endmodule