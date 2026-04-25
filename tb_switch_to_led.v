`timescale 1ns / 1ps

module tb_switch_to_led;

reg [3:0] sw;
wire [3:0] led;

// Instantiate DUT (Device Under Test)
switch_to_led uut (
    .sw(sw),
    .led(led)
);

initial begin
    // Initialization
    sw = 4'b0000;

    // Apply test cases
    #10 sw = 4'b0001;
    #10 sw = 4'b0010;
    #10 sw = 4'b0100;
    #10 sw = 4'b1000;

    #10 sw = 4'b1111;
    #10 sw = 4'b1010;
    #10 sw = 4'b0101;

    #10 $finish;
end

endmodule
