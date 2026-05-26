`timescale 1ns / 1ps

module tb;

    // Inputs
    reg [7:0] ui_in;
    reg [7:0] uio_in;
    reg ena;
    reg clk;
    reg rst_n;

    // Outputs
    wire [7:0] uo_out;
    wire [7:0] uio_out;
    wire [7:0] uio_oe;

    // Instantiate the DUT (Device Under Test)
    tt_um_example dut (
        .ui_in(ui_in),
        .uo_out(uo_out),
        .uio_in(uio_in),
        .uio_out(uio_out),
        .uio_oe(uio_oe),
        .ena(ena),
        .clk(clk),
        .rst_n(rst_n)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Generate waveform file
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);

        // Initialize signals
        ui_in  = 8'b00000000;
        uio_in = 8'b00000000;
        ena    = 1'b1;
        clk    = 1'b0;
        rst_n  = 1'b0;

        // Apply reset
        #10;
        rst_n = 1'b1;

        // Test Case 1
        #10;
        ui_in = 8'b00001111;

        // Test Case 2
        #10;
        ui_in = 8'b10101010;

        // Test Case 3
        #10;
        ui_in = 8'b11110000;

        // Test Case 4
        #10;
        ui_in = 8'b11111111;

        // Stop simulation
        #20;
        $finish;

    end

endmodule
