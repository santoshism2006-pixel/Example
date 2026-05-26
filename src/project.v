/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_example (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // Bidirectional inputs
    output wire [7:0] uio_out,  // Bidirectional outputs
    output wire [7:0] uio_oe,   // Output enable
    input  wire       ena,      
    input  wire       clk,      
    input  wire       rst_n     
);

    // Invert all bits from ui_in
    assign uo_out = ~ui_in;

    // Not using bidirectional pins
    assign uio_out = 8'b00000000;
    assign uio_oe  = 8'b00000000;

    // Prevent unused signal warnings
    wire _unused = &{ena, clk, rst_n, uio_in, 1'b0};

endmodule
